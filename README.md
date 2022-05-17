# uf-cloud-ops-exercise
A technical exercise for candidates of the Lead Cloud Ops position

Thank you for taking the time to interview with us! This project is the basis for a collaborative technical exercise.

_**The primary goal of the exercise is to complete the workflow file [here](https://github.com/CalthorpeAnalytics/uf-cloud-ops-exercise/blob/main/.github/workflows/build-and-deploy.yaml)**_. Your additions should include any and all steps you think are necessary to build and deploy the application to production. Please note that the terraform configuration represents a hypothetical application - we do not expect the final GitHub Action workflow to "work" (and, in fact, it would expectedly fail, since there are no secrets defined to allow authenticating to ECR, for example).

The workflow file defines a GitHub Action to build a container and deploy to an existing production containerized service running on AWS ECS. If you do not have previous hands-on experience writing GitHub Actions workflows, please refernence the overview [here](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions). At the beginning of the exercise, we'll also make sure you have enough background to get started. Much of the initial workflow setup is already defined, and the remaining steps (that you will define) can be captured in `run`(`bash`) steps (e.g., see the `placeholder` steps as a starting point). We're less interested in syntactically-perfect code than we are in a solution that captures all of the steps necessary to build and deploy the application.

After introductions, you will have up to `30` minutes to add steps to `build-and-deploy.yaml`. During this time, you and the interviewers will be muted and have video turned off, but feel free to unmute to ask questions at any time. After that, we will unmute/turn on video and spend up to `45` minutes reviewing your additions, as well as discussing some higher-level topics about the project.

This repo contains the following sections:
* `app/`: A minimal Flask-based python application. It currently serves a single endpoint (`/version`), that returns the current version of the application in a JSON payload. For local development, the version is always `latest`, and in production, the version is extracted from the execution environment.
* `infra/`: Terraform configuration for an existing AWS ECS service. Note that this is not a complete terraform configuration, but simply a reference to how the application defined in `app` is deployed. You do not need to write additional configuration in the `infra/` directory (though it may be basis for conversation topics).
* `scripts/`: A collection of scripts that serve as entrypoints to the application: building the image, running tests, serving the app locally and in production.
