job "java-tutorial" {
  name = "java-tutorial"
  datacenters = ["dc1"]
  type = "service"

    group "deployment" {
        task "java-run" {
            driver = "java"

            artifact {
                source = "https://github.com/rookout/nomad-driver/raw/main/example/tutorialJava.jar"
                destination = "local/JavaTutorial.jar"
                mode = "file"
                options {}
            }

            config {
                jar_path    = "local/JavaTutorial.jar"
                jvm_options = ["-Xmx2048m", "-Xms256m"]
            }
        }
    }
}