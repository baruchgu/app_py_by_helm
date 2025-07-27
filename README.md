# Simple Python application deploy by helm+Kubernetes
## 📌 Project Overview
The project demonstrates all steps to deploy the application by Helm tool into Kubernetes container.

## 🎬 Steps
The project demonstration consists of 
- create basic Helm chart
- add customized file of values
- deploy the chart with customized values
- test the application output

## 🔗 Prerequirements
Before you begin, ensure you have the following installed:
- [Git](https://git-scm.com/) to clone the repository
- [kubectl](https://kubernetes.io/docs/tasks/tools/) to interact with your Kubernetes cluster
- A Kubernetes cluster (e.g., Minikube, Kind, or a cloud provider like GKE, EKS, or AKS)
- curl package
K3S tool is running in Debian based node.  

## Getting Started

Follow these steps to clone the repository, set up the helm chart, and deploy the application.

### 1. Clone the Repository

Clone the `app_py_by_helm` repository to your local machine:

```bash
git clone git@github.com:baruchgu/app_py_by_helm.git
cd app_py_by_helm
```

### 2. 🛠️ Usage
Run the `setup.myapp.sh` script to automate the NFS server setup:

```bash
chmod +x src/setup.myapp.sh
./src/setup.myapp.sh
```
### 3. Cleaning Up
The script uninstall.sh destroies the deploiment and removes the chart directory
```bash
chmod +x src/uninstall.sh
./src/uninstall.sh
```

## 📁 Folder Structure
<details><summary></summary>

📁 <span style="display: inline-block; margin-right: 20px;">[app_py_by_helm/](./)</span> Root directory   
  - 📄 <span style="display: inline-block; margin-right: 20px;">[README.md](./README.md)</span> Project overview  
  - 📄 <span style="display: inline-block; margin-right: 20px;">[TASK.md](./TASK.md)</span> The task description  
  - 📄 <span style="display: inline-block; margin-right: 20px;">[LICENSE](./LICENSE)</span> MIT License note  
  - 📂 <span style="display: inline-block; margin-right: 20px;">[src](./src)</span> Project setup scripts
<details><summary></summary>
    - 📜 <span style="display: inline-block; margin-right: 20px;">[setup.myapp.sh](./src/setup.myapp.sh)</span> Main setup script   
    - 📜 <span style="display: inline-block; margin-right: 20px;">[uninstall.sh](./src/uninstall.sh)</span> Clean up script  

</details>
</details>

## Contributing
Contributions are welcome! Please open an issue or submit a pull request on the [GitHub repository](https://github.com/baruchgu/app_py_by_helm) for bug fixes, improvements, or new features.

## 🪪 License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


