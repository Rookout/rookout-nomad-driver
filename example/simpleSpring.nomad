job "java-simple-spring-same" {
  name = "java-simple-spring-same"
  datacenters = ["dc1"]
  type = "service"

    group "deployment" {
        task "java-run" {
            driver = "java-rookout"

            artifact {
                source = "https://github.com/rookout/nomad-driver/raw/main/example/SimpleLoop.jar"
                destination = "local/SimpleLoop.jar"
                mode = "file"
                options {}
            }

            config {
                jar_path    = "local/SimpleLoop.jar"
                jvm_options = ["-Xmx2048m", "-Xms256m"]
                rookout_token = "2d1c78743eb256e80a4b4b53314c806253e88a17ae65044ce9818e3d294be2f0"
            }
        }
    }
}