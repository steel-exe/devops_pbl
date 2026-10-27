#!/usr/bin/env bash
set -e

echo "=== STEP 1: Linux Environment Inspection ==="
uname -a
lsb_release -a
hostname
whoami
git --version
pwd

echo ""
echo "=== STEP 2: Create Linux User devopsuser ==="
if id "devopsuser" &>/dev/null; then
    echo "User devopsuser already exists."
else
    sudo useradd -m -s /bin/bash devopsuser
    echo "Created user devopsuser successfully."
fi
id devopsuser
getent passwd devopsuser
grep "devopsuser" /etc/passwd

echo ""
echo "=== STEP 3: Configure Git Global Identity ==="
git config --global user.name "Shivraj Vaibhav Dhumal"
git config --global user.email "dhumalshivraj92@gmail.com"
git config --global --list

echo ""
echo "=== STEP 4: Initialize Git Repository ==="
mkdir -p ~/DevOps_PBL_Set_4_Q1
cd ~/DevOps_PBL_Set_4_Q1
git init

echo ""
echo "=== STEP 5: Create Source File HelloWorld.java ==="
cat << 'EOF' > HelloWorld.java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("==================================================");
        System.out.println("DevOps PBL Set 4 - Question 1: Linux and Git");
        System.out.println("Student Name : Shivraj Vaibhav Dhumal");
        System.out.println("GID          : 3501");
        System.out.println("Branch       : Artificial Intelligence and Machine Learning");
        System.out.println("College      : Sanjivani University, Kopargaon");
        System.out.println("Status       : Git repository initialized and committed successfully");
        System.out.println("==================================================");
    }
}
EOF
cat HelloWorld.java

echo ""
echo "=== STEP 6: Commit Source File ==="
git status
git add HelloWorld.java
git commit -m "Add HelloWorld Java application for DevOps PBL Set 4 (Student: Shivraj Vaibhav Dhumal - GID 3501)"
git log -1 --stat --oneline

echo ""
echo "=== STEP 7: Remote Configuration ==="
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/steel-exe/devops_pbl.git
git remote -v

echo ""
echo "=== QUESTION 1 EXECUTION COMPLETE ==="
