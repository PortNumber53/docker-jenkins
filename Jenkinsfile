#!groovy

node {
    currentBuild.result = "SUCCESS"

    try {

        stage('Checkout'){

            checkout scm
        }

	stage('Build') {
	    sh 'docker build -t portnumber53/docker-jenkins:testing .'
	}

	stage('Push') {
	   sh 'docker push portnumber53/docker-jenkins:testing'
	}

        stage('Cleanup'){

            sh 'All good!'
        }


    }
    catch (err) {

        currentBuild.result = "FAILURE"

        sh 'Some error!'

        throw err
    }

}
