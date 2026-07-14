# Day 04: Production-Grade Automation with Conditionals

Welcome to Day 04! Today, we moved away from simple basics and built real-world shell scripts using advanced conditional structures (`if-else`, `case` statements, and mathematical flag operations). These scripts simulate actual tasks performed by DevOps Engineers in live staging and production environments.

---

## 📁 Repository Contents & Scripts

### 1. `calculator.sh`
* **Purpose:** A clean command-line utility that processes arithmetic operations.
* **Logic Handled:** Uses `case` blocks to evaluate operations (Addition, Subtraction, Multiplication, Division) based on user input flags.

### 2. `disk_monitor.sh`
* **Purpose:** Monitors system disk space usage on the root partition.
* **Logic Handled:** Parses the output of `df -h`, strips the percentage (`%`) symbol dynamically, and triggers a warning/critical threshold check using integer comparisons.

### 3. `file_auditor.sh`
* **Purpose:** Audits target files/directories in a path for permissions and availability.
* **Logic Handled:** Uses advanced nested `if-else` blocks to evaluate permissions and flags unsafe access levels.

### 4. `service_monitor.sh`
* **Purpose:** Acts as a lightweight system service watchdog.
* **Logic Handled:** Checks process status using `systemctl status` checks, attempting automatic restarts and logging failures.

---

## 🚀 How to Execute These Scripts

First, make sure to assign executable permissions to the scripts:
```bash
chmod +x calculator.sh disk_monitor.sh file_auditor.sh service_monitor.sh
