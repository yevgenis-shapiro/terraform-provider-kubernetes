
resource "kubernetes_manifest" "deployment_httpd_server" {
  manifest = {
    "apiVersion" = "apps/v1"
    "kind" = "Deployment"
    "metadata" = {
      "labels" = {
        "app" = "httpd-server"
      }
      "name" = "httpd-server"
      "namespace" = "default"
    }
    "spec" = {
      "replicas" = 1
      "selector" = {
        "matchLabels" = {
          "app" = "httpd-server"
        }
      }
      "template" = {
        "metadata" = {
          "labels" = {
            "app" = "httpd-server"
          }
        }
        "spec" = {
          "containers" = [
            {
              "image" = "httpd:2.4"
              "name" = "httpd-server"
              "ports" = [
                {
                  "containerPort" = 80
                  "name" = "http-port"
                },
              ]
            },
          ]
          "restartPolicy" = "Always"
        }
      }
    }
  }
}

resource "kubernetes_manifest" "service_httpd_server" {
  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "name" = "httpd-server"
      "namespace" = "default"
    }
    "spec" = {
      "ports" = [
        {
          "name" = "http-port"
          "port" = 8080
          "targetPort" = 80
        },
      ]
      "selector" = {
        "app" = "httpd-server"
      }
      "type" = "ClusterIP"
    }
  }
}
