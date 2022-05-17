resource "aws_ecs_cluster" "ecs_cluster" {
  name = "uf-cloud-ops-exercise"
}


resource "aws_ecs_task_definition" "app" {
  family = "service"
  container_definitions = jsonencode([
    {
      name         = "app"
      image        = "123456789012.dkr.ecr.us-west-2.amazonaws.com/uf-cloud-ops-exercise:v0.0.1"
      cpu          = 256
      memory       = 512
      command      = ["app.py"]
      essential    = true
      network_mode = "awsvpc"
      portMappings = [
        {
          containerPort = 5000
          hostPort      = 5001
        }
      ]
    }
  ])
}


resource "aws_ecs_service" "svc" {
  name            = "uf-cloud-ops-exercise-app"
  cluster         = aws_ecs_cluster.ecs_cluster.arn
  task_definition = aws_ecs_task_definition.app.arn
  desired_count   = 1
}
