// Declarative Pipeline
pipeline {
   agent any
   environment {
       PATH = "C:\\Program Files\\MATLAB\\R2020b\\bin;${PATH}"   // Windows agent
    // PATH = "/usr/local/MATLAB/R2020b/bin:${PATH}"   // Linux agent
    // PATH = "/Applications/MATLAB_R2020b.app/bin:${PATH}"   // macOS agent    
   }
    stages{
        stage('matlabJenkins - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '6e577d1a-921b-40a3-9398-e0b796e212b0', url: 'https://github.com/akcarsten/matlabJenkins.git']]]) 
	}
        stage('Run MATLAB Command') {
            steps
            {
               runMATLABCommand "disp('Hello World!')"
            }       
        }
        stage('Run MATLAB Tests') {
            steps
            {
                runMATLABTests()
            }       
        }                
    } 
}


