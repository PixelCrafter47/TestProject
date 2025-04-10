// Файл: Jenkinsfile
pipeline {
    // Указываем Jenkins использовать агент с меткой 'macos'
    agent { label 'macos' }

    stages {
        stage('Checkout') {
            steps {
                // Для Multibranch Pipeline checkout обычно делается автоматически,
                // но можно добавить шаг для чистоты или специфичных опций
                echo 'Checking out code...'
                checkout scm // Эта команда получает код для текущей ветки
                echo 'Checkout complete.'
            }
        }
        stage('Verify Environment') {
             steps {
                echo 'Verifying tools on macOS agent...'
                sh 'xcodebuild -version' // Проверяем доступность Xcode
                sh 'fastlane --version'   // Проверяем доступность Fastlane (если установлен)
                echo 'Environment verified.'
            }
        }
        // Сюда позже добавим стадии для тестов, сборки и т.д.
    }

    post {
        always {
            echo "Pipeline finished for branch ${env.BRANCH_NAME}." // Используем переменную окружения
        }
    }
}