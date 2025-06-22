
# 🛠️ AWS SaaS Infrastructure Deployment Project

This project demonstrates a complete Infrastructure-as-Code (IaC) pipeline that provisions cloud resources, configures the server, and deploys a production-ready Flask application using:

- **Terraform** to provision AWS EC2
- **Ansible** to configure the server and deploy the application
- **Docker** for containerizing the Flask app
- **uWSGI + Nginx** as the production web stack
- **Flask (Python)** as the SaaS sample application

---

## 📦 Technologies Used

- **Terraform** – Infrastructure provisioning (EC2, security group)
- **Ansible** – Server configuration and deployment automation
- **Docker** – Containerization for consistent environment
- **Nginx + uWSGI** – High-performance production setup
- **AWS EC2 (Amazon Linux 2)** – Cloud VM to host the app
- **Flask** – Lightweight Python web framework


---

## 🚀 How to Deploy

### Step 1: Provision AWS EC2 using Terraform

```bash
cd terraform
terraform init
terraform apply
```

> Output will give you the EC2 public IP.

---

### Step 2: Configure and Deploy App with Ansible

```bash
cd ../ansible
ansible-playbook -i inventory.ini deploy.yml
```

> This will install Docker, clone the app, build the image, and run the container with port 80 exposed.

---

## 🌐 Access the Application

Visit your EC2 public IP in the browser or use `curl`:

```bash
curl http://<your-ec2-public-ip>
```

Expected output:

```
Hello World from Flask in a uWSGI Nginx Docker container with Python 3.10
```

---

## ✅ Features

- 100% automated EC2 provisioning and app deployment
- Nginx + uWSGI stack for production-grade hosting
- Runs Flask in Docker with Python 3.10
- Modular and reusable IaC structure

---

## 📌 Deployment Tips

- Make sure your EC2 security group allows inbound traffic on port **80**
- Update the `inventory.ini` file with your EC2 public IP
- Ensure `terraform-key.pem` (your private key) has correct permissions (`chmod 400`)

---

## 📘 References

- Dockerized Flask app: [tiangolo/uwsgi-nginx-flask-docker](https://github.com/tiangolo/uwsgi-nginx-flask-docker)
- Terraform AWS Provider: [Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- Ansible Docs: [docs.ansible.com](https://docs.ansible.com/)

---

## 🙋 Author

**Ahmedtech2003**  
GitHub: [github.com/Ahmedtech2003](https://github.com/Ahmedtech2003)

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).
