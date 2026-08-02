<div align="center">

<h3>Mert Emir</h3>
<p>DevOps Lead · <code>4+ years running infrastructure as code</code></p>

<p>
  <a href="https://linkedin.com/in/mertemr"><img alt="LinkedIn" src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" /></a>
  <a href="https://mertemr.com"><img alt="Website" src="https://img.shields.io/badge/mertemr.com-000000?style=flat-square&logo=todoist&logoColor=white" /></a>
</p>

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&pause=1000&color=2F80ED&center=true&vCenter=true&width=560&lines=Cloud+Infrastructure+%26+IaC;CI%2FCD+%26+Automation;Platform+Engineering;DevSecOps+%26+Observability" alt="Typing SVG" />

</div>

## Profile

DevOps engineer working across individual contribution and technical leadership, responsible for cloud infrastructure decisions as well as hands-on implementation. Core areas: cloud migrations, systems administration, cloud architecture design, cost optimization, and CI/CD automation, built on Terraform and GitHub Actions.


## Platform Narrative

A platform shouldn't stop at "it deploys." It should carry infrastructure from a Terraform plan to a monitored, cost-aware production service through a controlled path:

**Provision -> Build -> Deploy -> Observe -> Optimize**

- **Provision:** VPCs, ECS/Fargate, RDS, and IAM defined through versioned Terraform modules pulled from a private registry, across a multi-account AWS Organizations setup with centralized SSO.
- **Build:** Services built through Docker Bake and matrix/multi-platform GitHub Actions pipelines, running in parallel instead of one long serial job.
- **Deploy:** GitHub Actions ships through ECR to ECS Fargate, with blue-green/canary rollouts, environment-gated approvals from staging to production, and automated rollback on failed health checks.
- **Observe:** Prometheus and Grafana cover the stack, with CloudWatch as the first place I check when something breaks.
- **Optimize:** RDS Reserved Instances, Savings Plans, and right-sized Fargate tasks keep a recurring FinOps pass grounded in real usage.


## Status panel

| | |
|---|---|
| 🏗️ **Infra as code** | 100% Terraform, private module registry, no console click-ops |
| 🚀 **Deploy pipeline** | GitHub Actions -> Docker Bake -> ECR -> ECS Fargate |
| 🔐 **Security posture** | Least-privilege IAM, layered Security Groups, Gitleaks scanning on every repo |
| 📈 **Observability** | Prometheus + Grafana on ECS/EFS, unmonitored infra doesn't count as production to me |
| 💰 **Cost discipline** | RDS Reserved Instances, Savings Plans, right-sized Fargate tasks |
| 🏢 **AWS accounts** | Multi-account landing zone via AWS Organizations, centralized SSO |

## Track record

- Migrated on-prem/VPS workloads to AWS and broke a monolith into containerized microservices running on ECS/Fargate
- Retired legacy pipelines in favor of GitHub Actions, with reusable workflows shared across repos
- Built blue-green/canary deployment flows with environment-gated approvals (staging -> production) and automated rollback on failed health checks
- Set up matrix/multi-platform GitHub Actions builds and Docker Bake multi-target builds running in parallel
- Stood up a multi-account AWS Organization with centralized SSO
- Maintain a private Terraform module registry so infra changes stay reviewable, versioned, and consistent across environments

### Stack

Cloud & Infrastructure:

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=flat-square&logo=amazon-aws&logoColor=white) ![GCP](https://img.shields.io/badge/GCP-4285F4?style=flat-square&logo=googlecloud&logoColor=white) ![HCP](https://img.shields.io/badge/HCP-000000?style=flat-square&logo=hashicorp&logoColor=white) ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=flat-square&logo=terraform&logoColor=white) ![Ansible](https://img.shields.io/badge/Ansible-EE0000?style=flat-square&logo=ansible&logoColor=white) ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=flat-square&logo=docker&logoColor=white)

CI/CD & Delivery:

![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=flat-square&logo=githubactions&logoColor=white) ![Amazon ECS](https://img.shields.io/badge/Amazon%20ECS-FF9900?style=flat-square&logo=amazonecs&logoColor=white) ![AWS Lambda](https://img.shields.io/badge/AWS%20Lambda-FF9900?style=flat-square&logo=awslambda&logoColor=white) ![ArgoCD](https://img.shields.io/badge/ArgoCD-EF7B4D?style=flat-square&logo=argo&logoColor=white) ![FluxCD](https://img.shields.io/badge/FluxCD-5468FF?style=flat-square&logo=flux&logoColor=white)

Security & Governance:

![Gitleaks](https://img.shields.io/badge/Gitleaks-000000?style=flat-square) ![IAM](https://img.shields.io/badge/IAM-Least--Privilege-FF9900?style=flat-square&logo=amazon-aws&logoColor=white) ![HashiCorp Vault](https://img.shields.io/badge/Vault-FFEC6E?style=flat-square&logo=vault&logoColor=black) ![Trivy](https://img.shields.io/badge/Trivy-1904DA?style=flat-square&logo=trivy&logoColor=white) ![Snyk](https://img.shields.io/badge/Snyk-4C4A73?style=flat-square&logo=snyk&logoColor=white) ![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?style=flat-square&logo=cloudflare&logoColor=white)

Observability & Cost:

![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=flat-square&logo=prometheus&logoColor=white) ![Grafana](https://img.shields.io/badge/Grafana-F46800?style=flat-square&logo=grafana&logoColor=white) ![CloudWatch](https://img.shields.io/badge/CloudWatch-FF9900?style=flat-square&logo=amazon-aws&logoColor=white) ![Datadog](https://img.shields.io/badge/Datadog-632CA6?style=flat-square&logo=datadog&logoColor=white)

Languages & Automation:

![Python](https://img.shields.io/badge/python-3670A0?style=flat-square&logo=python&logoColor=ffdd54) ![TypeScript](https://img.shields.io/badge/typescript-%23007ACC.svg?style=flat-square&logo=typescript&logoColor=white) ![Bash](https://img.shields.io/badge/bash-%234EAA25.svg?style=flat-square&logo=gnubash&logoColor=white)

### GitHub Stats

<p align="center">
  <img src="https://github-readme-streak-stats.herokuapp.com/?user=mertemr&theme=transparent&hide_border=true" alt="GitHub Streak" />
</p>
<p align="center">
  <img src="https://img.shields.io/github/followers/mertemr?style=flat-square&label=Followers" alt="Followers" />
  <img src="https://img.shields.io/github/stars/mertemr?style=flat-square&label=Stars" alt="Stars" />
</p>

## Off the clock

A small vineyard, the stray cats around it, and a telescope out whenever the sky's clear. R.I.P. Sufle, the calmest cat in the vineyard 🐈

<p align="center">
  <img src="https://komarev.com/ghpvc/?username=mertemr&color=blue&style=flat-square" alt="Profile views" />
</p>
