# Kubernetes Local Automation with Kind & Bash 🚀

This project demonstrates microservices orchestration in a local Kubernetes environment on Linux, using **Kind** for the cluster and **Bash Scripts** for complete infrastructure lifecycle automation.

## 🛠️ What does this project solve?

Setting up Kubernetes development environments can be complex. This repository delivers a "One-Command-Setup" solution, where a Bash script prepares the cluster, manages permissions, and deploys an Nginx application with replicas and resource limits.

## 🧰 Tech Stack

- **OS:** Xubuntu (Linux)
- **Engine:** Docker
- **Orchestrator:** Kubernetes (via Kind)
- **Automation:** Shell Script (Bash)

## 🏗️ Architecture and Applied Concepts

- **Infrastructure as Code (IaC):** The entire environment is versionable and reproducible.
- **Resource Management:** Configuration of `limits` and `requests` to prevent Host memory exhaustion.
- **High Availability:** Use of 2 replicas managed by a Deployment.
- **Service Discovery:** Application exposure via Service (ClusterIP) with tunneling via Port-Forward.

## 🚀 How to run

1. Clone the repository.
2. Run `./scripts/setup.sh`.
3. Access `http://localhost:8080`.

---

*Highlight: This project was built focusing on industry best practices, such as layer separation (k8s vs scripts) and resource cleanup (cleanup.sh).*
