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

            mail body: 'project build successful',
                    from: 'grimlock@portnumber53.com',
                    replyTo: 'grimlock@portnumber53.com',
                    subject: 'Docker-Jenkins project build successful',
                    to: 'grimlock@portnumber53.com'
        }


    }
    catch (err) {

        currentBuild.result = "FAILURE"

        mail body: "project build error is here: ${env.BUILD_URL}" ,
                from: 'grimlock@portnumber53.com',
                replyTo: 'grimlock@portnumber53.com',
                subject: 'Docker-Jenkins project build failed',
                to: 'grimlock@portnumber53.com'

        throw err
    }

}
