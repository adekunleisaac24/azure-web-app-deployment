# 🌐 Azure Web App Deployment

Automating the deployment of a web application using **Azure App Services** and **CI/CD Pipelines**.

## 📌 Project Overview
This project demonstrates how to:
- Deploy a web application on **Azure App Services**.
- Set up **Infrastructure-as-Code (IaC)** using **Terraform**.
- Implement **CI/CD** with **GitHub Actions** for automated deployment.

## 📂 Project Structure
```
azure-web-app-deployment/
├── README.md         (Project overview)
├── src/             (Sample web app code)
└── infra/           (Azure infrastructure code - Terraform)
```

## 🚀 Getting Started

### Prerequisites
- Azure Account ([Sign up for free](https://azure.microsoft.com/free/))
- Git & GitHub account
- Terraform installed on your local machine

### Step 1: Clone the Repository
```bash
git clone https://github.com/adekunleisaac24/azure-web-app-deployment.git
cd azure-web-app-deployment
```

### Step 2: Set Up Azure Infrastructure
1. Navigate to the `infra/` folder.
2. Initialize Terraform and apply the infrastructure:

```bash
cd infra
terraform init
terraform apply
```

### Step 3: Configure CI/CD Pipeline
1. Ensure you have the following GitHub secrets set:
   - `AZURE_CREDENTIALS`: Service principal credentials for Azure.
2. Push your changes to trigger the GitHub Actions workflow.

## 📊 Future Improvements
- Implement automated scaling.
- Add security best practices (e.g., managed identity).

## 📣 Contribute
Feel free to submit issues or pull requests. Contributions are welcome!

---

💡 **Explore other Azure projects on my [GitHub](https://github.com/adekunleisaac24)!**
# azure-web-app-deployment
Automating Azure Web App deployment using Azure App Services and CI/CD pipelines
