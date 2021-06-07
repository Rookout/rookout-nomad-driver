job "java-simple-spring" {
  name = "java-simple-spring"
  datacenters = ["dc1"]
  type = "service"

    group "deployment" {
        task "java-run" {
            driver = "java"

            artifact {
                source = "https://github.com/rookout/nomad-driver/raw/main/example/SimpleLoop.jar"
                destination = "local/SimpleLoop.jar"
                mode = "file"
                options {}
            }

            config {
                jar_path    = "local/SimpleLoop.jar"
                jvm_options = ["-Xmx2048m", "-Xms256m"]
            }
        }
    }
}