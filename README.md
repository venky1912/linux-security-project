
# **Linux Security Best Practices Project**

This project automates the implementation of **Linux Security Best Practices** for Ubuntu-based systems. It includes scripts to enforce security measures such as system updates, SSH hardening, user management, firewall setup, intrusion detection, file permissions, encryption, and much more.

Each script is designed to apply specific security best practices, and the project comes with automated test cases to verify that each feature has been correctly implemented.

---

## **Table of Contents**

- [Features Implemented](#features-implemented)
- [Getting Started](#getting-started)
- [Running Security Scripts](#running-security-scripts)
- [Testing and Verification](#testing-and-verification)
- [Project Structure](#project-structure)
- [Security Features Breakdown](#security-features-breakdown)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

---

## **Features Implemented**

1. **System Updates**: Automates the process of keeping the system updated to patch vulnerabilities.
2. **SSH Hardening**: Disables root login, changes the default SSH port, and enhances security with key-based authentication.
3. **User Management**: Adds a secure user with sudo access, enforces password policies, and limits unnecessary users.
4. **Firewall Setup**: Configures UFW (Uncomplicated Firewall) to restrict access to only required ports.
5. **Intrusion Detection**: Implements `Fail2ban` to block brute force attacks and `AIDE` to monitor changes in the filesystem.
6. **File Permissions**: Secures system-critical files (`/etc/passwd`, `/etc/shadow`) with appropriate file permissions.
7. **Disk Encryption**: Ensures the ability to encrypt disks using `LUKS` and `cryptsetup` to protect sensitive data.
8. **Automated Testing**: Each feature has an associated test case to ensure it works as expected.

---

## **Getting Started**

Follow the steps below to set up, execute the security features, and test the security configuration of your Linux system.

### **Prerequisites**

Ensure the following are installed on your machine:

1. **Ubuntu/Linux System** (Debian-based)
2. **Git**: To clone the repository
3. **Sudo privileges**: Necessary to execute most scripts.

### **Clone the Repository**

```bash
git clone https://github.com/venky1912/linux-security-project.git
cd linux-security-project
```

---

## **Running Security Scripts**

You can run the provided scripts individually or as part of a larger deployment pipeline. These scripts automate the application of security best practices to your system.

### **1. System Update & Upgrade**

Automates system updates to ensure all software is current and protected from vulnerabilities.

```bash
sudo ./scripts/update_and_upgrade.sh
```

### **2. SSH Hardening**

This script secures your SSH setup by disabling root login and changing the default SSH port from `22` to `2222`. It ensures SSH key-based authentication.

```bash
sudo ./scripts/ssh_hardening.sh
```

### **3. User Management**

Creates a new secure user (`secureuser`), adds it to the `sudo` group, and enforces password complexity by installing and configuring `libpam-pwquality`.

```bash
sudo ./scripts/user_management.sh
```

### **4. Firewall Setup**

Configures UFW to allow only necessary traffic, securing your system by enabling only essential ports (`2222/tcp` for SSH, `80/tcp` for HTTP).

```bash
sudo ./scripts/firewall_setup.sh
```

### **5. Intrusion Detection**

Installs `Fail2ban` to prevent brute force attacks on SSH and `AIDE` for monitoring file system changes. This provides a basic layer of defense against unauthorized access attempts.

```bash
sudo ./scripts/intrusion_detection.sh
```

### **6. File Permissions**

Secures critical system files by enforcing strong permissions for `/etc/passwd` and `/etc/shadow`. This minimizes the risk of privilege escalation.

```bash
sudo ./scripts/file_permissions.sh
```

### **7. Disk Encryption**

Installs `cryptsetup` for encrypting disks, ensuring that data on the system is protected from unauthorized access.

```bash
sudo ./scripts/encryption.sh
```

---

## **Testing and Verification**

For each script, there’s a corresponding test script in the `tests/` directory. These tests verify that each security feature is correctly implemented.

### **Run All Tests**

To verify the implementation of all security features, you can run each test script individually:

```bash
sudo ./tests/test_update_and_upgrade.sh
sudo ./tests/test_ssh_hardening.sh
sudo ./tests/test_user_management.sh
sudo ./tests/test_firewall_setup.sh
sudo ./tests/test_intrusion_detection.sh
sudo ./tests/test_file_permissions.sh
sudo ./tests/test_encryption.sh
```

Each test script will output `PASSED` or `FAILED` depending on whether the security feature has been properly implemented.

---

## **Project Structure**

```bash
linux-security-project/
├── scripts/
│   ├── update_and_upgrade.sh        # Script for system updates
│   ├── ssh_hardening.sh             # Script for SSH hardening
│   ├── user_management.sh           # Script for secure user creation and password policy
│   ├── firewall_setup.sh            # Script for UFW firewall configuration
│   ├── intrusion_detection.sh       # Script for Fail2ban and AIDE setup
│   ├── file_permissions.sh          # Script for securing file permissions
│   ├── encryption.sh                # Script for disk encryption setup
├── tests/
│   ├── test_update_and_upgrade.sh   # Test for system updates
│   ├── test_ssh_hardening.sh        # Test for SSH hardening
│   ├── test_user_management.sh      # Test for user management and password policy
│   ├── test_firewall_setup.sh       # Test for firewall configuration
│   ├── test_intrusion_detection.sh  # Test for Fail2ban and AIDE
│   ├── test_file_permissions.sh     # Test for file permissions
│   ├── test_encryption.sh           # Test for disk encryption
├── README.md                        # Project documentation
└── .gitignore                       # Git ignore file
```

---

## **Security Features Breakdown**

### **1. System Updates**

Ensuring that the system and all installed packages are regularly updated reduces the risk of exploits due to known vulnerabilities.

- **Script**: `scripts/update_and_upgrade.sh`
- **Test**: `tests/test_update_and_upgrade.sh`

### **2. SSH Hardening**

Changing default SSH settings, such as disabling root login and using SSH key authentication, adds a strong layer of security to your system.

- **Script**: `scripts/ssh_hardening.sh`
- **Test**: `tests/test_ssh_hardening.sh`

### **3. User Management**

Managing user privileges and enforcing password complexity are critical steps in reducing unauthorized access to your system.

- **Script**: `scripts/user_management.sh`
- **Test**: `tests/test_user_management.sh`

### **4. Firewall Setup**

Firewalls act as a barrier between your internal network and the external internet, allowing only trusted traffic through.

- **Script**: `scripts/firewall_setup.sh`
- **Test**: `tests/test_firewall_setup.sh`

### **5. Intrusion Detection**

Tools like `Fail2ban` and `AIDE` help detect and prevent unauthorized access and system compromise.

- **Script**: `scripts/intrusion_detection.sh`
- **Test**: `tests/test_intrusion_detection.sh`

### **6. File Permissions**

Securing critical system files ensures that unauthorized users or processes cannot alter sensitive data.

- **Script**: `scripts/file_permissions.sh`
- **Test**: `tests/test_file_permissions.sh`

### **7. Disk Encryption**

Encrypting disks protects your data from unauthorized access, especially in scenarios like theft or physical access to the machine.

- **Script**: `scripts/encryption.sh`
- **Test**: `tests/test_encryption.sh`

---

## **Troubleshooting**

- **Script Execution Issues**: Ensure that each script has the necessary permissions to execute:

  ```bash
  chmod +x ./scripts/*.sh
  chmod +x ./tests/*.sh
  ```

- **SSH Connection Fails After Hardening**: Make sure you're connecting to the new SSH port (`2222`). Update your SSH configuration:

  ```bash
  ssh -p 2222 youruser@yourserver
  ```

- **Firewall Issues**: If UFW blocks essential traffic, review UFW status:

  ```bash
  sudo ufw status
  ```

---

## **Contributing**

Contributions to this project are welcome. Feel free to submit issues, fork the repository, or open pull requests with improvements or additional features.

---

## **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

This project helps automate the process of securing a Linux system, making it more resilient to common attacks. By using and extending this project, you'll create a robust defense for your Ubuntu/Linux-based systems.

