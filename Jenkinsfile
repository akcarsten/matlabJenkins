// Declarative Pipeline
pipeline {
   agent any
    options {
        // Keep the 10 most recent builds
        buildDiscarder(logRotator(numToKeepStr: '10'))
        timestamps()
    }
   environment {
       PATH = "C:\\Program Files\\MATLAB\\R2020b\\bin;${PATH}"   // Windows agent
   }
    stages{
        stage('Run MATLAB Command') {
            steps
            {
               runMATLABCommand "disp('Hello World!')"
            }       
        }
        stage('Run MATLAB Tests') {
            steps
            {
                runMATLABTests(sourceFolder: ['source'])
            }       
        }                
    } 
}
