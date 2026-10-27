# DevOps PBL Set 4 — Question 1: Linux & Git Commands Reference

**Student Details:**
- **Name:** Shivraj Vaibhav Dhumal
- **GID:** 3501
- **Branch:** Artificial Intelligence & Machine Learning (AIML)
- **College:** Sanjivani University, Kopargaon

---

## 1. System Inspection & Environment Verification
```bash
# Verify Linux release and kernel
uname -a
lsb_release -a
hostname
whoami

# Verify installed tools
git --version
which git
which javac java 2>/dev/null || echo "Java not installed"
pwd
```

---

## 2. Linux User Management (`devopsuser`)
```bash
# Create the dedicated user devopsuser with home directory and bash shell
sudo useradd -m -s /bin/bash devopsuser

# Set or unlock password (if interactive login is needed)
# sudo passwd devopsuser

# Verify user creation in /etc/passwd and id command
id devopsuser
getent passwd devopsuser
grep "devopsuser" /etc/passwd
```

---

## 3. Git Global Configuration
```bash
# Configure student identity
git config --global user.name "Shivraj Vaibhav Dhumal"
git config --global user.email "dhumalshivraj92@gmail.com"

# Verify global configuration
git config --global --list
```

---

## 4. Local Repository Initialization & Source Creation
```bash
# Create working project directory
mkdir -p ~/DevOps_PBL_Set_4_Q1
cd ~/DevOps_PBL_Set_4_Q1

# Initialize local git repository
git init

# Create Java source file HelloWorld.java
cat << 'EOF' > HelloWorld.java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("==================================================");
        System.out.println("DevOps PBL Set 4 - Question 1: Linux and Git");
        System.out.println("Student Name : Shivraj Vaibhav Dhumal");
        System.out.println("GID          : 3501");
        System.out.println("Branch       : Artificial Intelligence & Machine Learning");
        System.out.println("College      : Sanjivani University, Kopargaon");
        System.out.println("Status       : Git repository initialized & committed successfully");
        System.out.println("==================================================");
    }
}
EOF

# Compile and test run (if Java is installed)
javac HelloWorld.java
java HelloWorld
```

---

## 5. Git Staging & Initial Commit
```bash
# Check working tree status
git status

# Stage the source file
git add HelloWorld.java

# Commit with descriptive message
git commit -m "Add HelloWorld Java program for DevOps PBL Set 4 (Student: Shivraj Vaibhav Dhumal - 3501)"

# Verify commit history
git log -1 --stat --oneline
```

---

## 6. Remote Repository Configuration & Push to GitHub
```bash
# Target repository provided: https://github.com/steel-exe/devops_pbl
# Set default branch to main
git branch -M main

# Add remote origin
git remote add origin https://github.com/steel-exe/devops_pbl.git
# Or using SSH: git remote add origin git@github.com:steel-exe/devops_pbl.git

# Verify remote configuration
git remote -v

# Push to GitHub
git push -u origin main

# Verify current branch and latest commit
git branch --show-current
git log -1 --oneline
```
