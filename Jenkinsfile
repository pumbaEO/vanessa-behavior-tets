#!groovy
node("slave") {
    stage "checkout"

    if (env.DISPLAY) {
        println env.DISPLAY;
    } else {
        env.DISPLAY=":1"
    }
    env.RUNNER_ENV="production";

    checkout scm
    if (isUnix()) {sh 'git submodule update --init'} else {bat "git submodule update --init"}
    stage "init base"

    //checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'SubmoduleOption', disableSubmodules: false, recursiveSubmodules: true, reference: '', trackingSubmodules: true]], submoduleCfg: [], userRemoteConfigs: [[url: 'http://git.http.service.consul/shenja/vanessa-behavior.git']]])
    echo "${env.WORKSPACE}"

    def srcpath = "./lib/CF/83NoSync";
    if (env.SRCPATH){
        srcpath = env.SRCPATH;
    }
    def v8version = "";
    if (env.V8VERSION) {
        v8version = "--v8version ${env.V8VERSION}"
    }
    def command = "oscript tools/init.os init-dev ${v8version} --src "+srcpath
    timestamps {
        if (isUnix()){
            sh "${command}"
        } else {
            bat "${command}"
        }
    }

    stage "build"
    echo "build catalogs"
    command = """oscript tools/runner.os compileepf ${v8version} --ibname /F"./build/ib" ./ ./build/out/ """
    if (isUnix()) {sh "${command}"} else {bat "${command}"}       
    
    stage "test"
    def testsettings = "VBParams837UF.json";
    if (env.PATHSETTINGS) {
        testsettings = env.PATHSETTINGS;
    }
    command = """oscript tools/runner.os vanessa ${v8version} --ibname /F"./build/ib" --path ./build/out/vanessa-behavior.epf --pathsettings ./tools/JSON/${testsettings} """
    if (isUnix()){ sh "${command}" } else {bat "${command}"}
}