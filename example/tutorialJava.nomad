variable "rookout_token" {
  type        = string
  description = "Rookout account token"
}

job "java-tutorial" {
  name = "java-tutorial"
  datacenters = ["dc1"]
  type = "service"

  group "deployment" {
    task "java-run" {
      driver = "java-rookout"

      artifact {
        source = "https://github.com/rookout/nomad-driver/raw/main/example/tutorialJava.jar"
        destination = "local/javaTutorial.jar"
        mode = "file"
        options {}
      }

      config {
        jar_path    = "local/javaTutorial.jar"
        jvm_options = ["-Xmx2048m", "-Xms256m"]
        rookout_token = var.rookout_token
      }

      env {
        ROOKOUT_REMOTE_ORIGIN="https://github.com/Rookout/tutorial-java"
        ROOKOUT_DEBUG = "True"
      }
    }
  }
}