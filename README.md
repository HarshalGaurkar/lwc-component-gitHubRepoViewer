# 🚀 GitHub Repository Viewer - LWC Component  

A **Lightning Web Component (LWC)** that allows users to fetch and display **GitHub repositories** by entering a username. This component integrates with the **GitHub API** and showcases repositories dynamically in a clean, structured layout.

## 📌 Features  
✅ Fetch repositories using a **GitHub username**  
✅ Display **repository name, description, stars, and forks**  
✅ Styled with **SLDS (Salesforce Lightning Design System)** for a modern UI  
✅ **Spinner** while fetching data for better UX  
✅ **Error handling** for invalid usernames or API failures  
✅ **Responsive grid layout** (2 cards per row) with **scrolling for large lists**  

---

## 🛠 Installation & Setup  

### **Step 1: Clone the Repository**  
```sh
git clone https://github.com/YOUR_GITHUB_USERNAME/github-repo-viewer-lwc.git
cd github-repo-viewer-lwc
```

### **Step 2: Add Remote Site Settings in Salesforce**  
1️⃣ Go to **Setup** → **Remote Site Settings**  
2️⃣ Click **New Remote Site**  
3️⃣ Add: `https://api.github.com`  
4️⃣ Click **Save**  

### **Step 3: Deploy LWC Component & Apex Class**  
1️⃣ **Upload the LWC Component** to your **Salesforce Org**  
2️⃣ **Deploy the Apex Controller** (GitHubRepoController.cls)  

---

## 📖 Usage Instructions  
1️⃣ Open the **GitHub Repository Viewer** component in your Salesforce Org.  
2️⃣ Enter a valid **GitHub username** (e.g., `torvalds`, `microsoft`).  
3️⃣ Click **"Fetch Repos"** to retrieve the repositories.  
4️⃣ View details such as **name, description, stars, and forks count**.  
5️⃣ Click on a repository name to **open it on GitHub**.  

---

## 🔍 Scenarios & Use Cases  

### **1️⃣ Use Case: Track GitHub Repositories for Personal Development**  
- A developer wants to quickly browse repositories of **popular open-source contributors**.  
- Instead of navigating GitHub, they **search within Salesforce** and view **repo details instantly**.  

### **2️⃣ Use Case: Fetch & Analyze Repositories for Hiring Developers**  
- A **recruiter** wants to review candidates’ GitHub activity before an interview.  
- They enter a **GitHub username** and check repo details to analyze **contributions, stars, and forks**.  

### **3️⃣ Use Case: Salesforce Admins Tracking Open-Source LWC Components**  
- A Salesforce **Admin or Developer** wants to monitor **LWC components** on GitHub.  
- They enter an **LWC developer’s GitHub username** to check their latest components.  

---

## 🛠️ Technologies Used  
- **Salesforce LWC (Lightning Web Components)**  
- **Apex (Salesforce Backend Processing)**  
- **GitHub REST API**  
- **SLDS (Salesforce Lightning Design System)**  

---

## 🤝 Contributing  
We welcome contributions! If you’d like to **improve the component**:  
1️⃣ Fork this repository.  
2️⃣ Create a new **feature branch** (`git checkout -b feature-branch`).  
3️⃣ Commit changes and push (`git push origin feature-branch`).  
4️⃣ Open a **Pull Request (PR)** for review.  

---

## 📜 License  
This project is **open-source** and licensed under the **MIT License**.  

---

## 🌟 Acknowledgments  
Special thanks to the **Salesforce & GitHub API teams** for providing a robust development ecosystem.  

---
### 📩 **Need Help?**  
If you have any issues, feel free to open an **issue** or reach out. 🚀
```
