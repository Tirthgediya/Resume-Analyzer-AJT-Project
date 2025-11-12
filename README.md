💼 Smart Resume Analyzer and Builder with Career Role Prediction & Skill Gap Feedback

A comprehensive web-based platform that helps job seekers and students build professional resumes, analyze existing resumes, and receive personalized feedback to improve their career prospects.

---

🚀 Features

👤 User Features
📄 Resume Upload & Analysis - Upload PDF or text resumes for automated parsing and analysis
🔍 Job Role Prediction - Predicts suitable career domains and roles based on resume content
📊 Resume Scoring - Provides a numerical score (0-100) based on skill matching with target roles
🎯 Skill Gap Analysis - Highlights missing skills and provides improvement suggestions
🛠️ Resume Builder - Interactive form-based resume creation from scratch
🎨 Template Selection - Multiple professionally designed resume templates
📥 PDF Export - Generate and download professional PDF resumes

👨‍💼 Admin Features
🔐 Secure Login - Role-based authentication system
📈 Dashboard - Comprehensive view of all resume submissions and analysis results
🔍 Filter & Search - Filter resumes by role, score, or date
📋 Reports - Export data for placement tracking and analytics

---

🛠️ Tech Stack

Frontend: HTML5, CSS3, JavaScript, JSP
Backend: Java, Java Servlets
Database: MySQL, JDBC
PDF Processing: Apache PDFBox, iText
Server: Apache Tomcat
File Handling: Java I/O

---

🏗️ System Architecture

Client Side
• HTML forms and pages styled with CSS
• JavaScript for enhanced usability
• Dynamic content generation using JSP

Server Side  
• Java Servlets handle HTTP requests and business logic
• Apache PDFBox for text extraction from uploaded resumes
• Resume analysis logic for scoring and job role prediction

Database Layer
• MySQL stores user data, resumes, analysis results
• JDBC for database connectivity

PDF Generation
• iText library for dynamic PDF resume generation
• Template-based resume creation

---

🗂️ Project Structure

SmartResumeAnalyzer/
│
├── src/
│   ├── com/resume/controller/     → Servlets for request handling
│   ├── com/resume/dao/           → Database access (DAO classes)
│   ├── com/resume/model/         → Java model classes
│   ├── com/resume/service/       → Business logic layer
│   └── com/resume/util/          → Utilities (DB connection, file handling)
│
├── web/
│   ├── WEB-INF/
│   │   └── web.xml              → Deployment descriptor
│   ├── css/                     → Stylesheets
│   ├── js/                      → JavaScript files
│   ├── images/                  → Static images
│   ├── user/                    → User-facing JSP pages
│   ├── admin/                   → Admin panel JSP pages
│   └── templates/               → Resume templates
│
├── lib/                         → External libraries
├── database/                    → SQL scripts
└── documentation/               → Project documentation

---

📊 Database Design

Key Tables:
• students (id, name, email, resume_path, created_date)
• analysis_results (id, student_id, predicted_domain, predicted_role, score, missing_skills)
• admin (username, password, role)
• job_roles (role_id, domain, role_name, skill_keywords)
• resume_templates (template_id, template_name, template_path)

---

🔍 Resume Analysis Logic

1. Text Extraction - Parse uploaded PDF/text resumes using Apache PDFBox
2. Keyword Matching - Compare extracted skills against predefined job role skill sets
3. Scoring Algorithm - Calculate score (0-100) based on matched skills
4. Gap Analysis - Identify missing skills for target roles
5. Role Prediction - Suggest best-fit job domains and roles

---

🎯 Use Cases

For Job Seekers & Students:
→ Create professional resumes quickly
→ Understand how their resume matches job market requirements
→ Identify skills to develop for career advancement

For Educational Institutions:
→ Placement officers can track student resume quality
→ Generate reports for placement analytics
→ Provide data-driven career guidance

---

🚀 Installation & Setup

1. Clone the repository
2. Database Setup - Run the provided SQL scripts
3. Configure Database - Update DBConnection.java with your credentials
4. Deploy to Tomcat - Build and deploy WAR file to Tomcat
5. Access Application - Navigate to http://localhost:8080/SmartResumeAnalyzer

---

👥 User Roles

• Student/Job Seeker - Can upload resumes, use resume builder, view analysis results
• Admin - Can monitor all submissions, generate reports, manage system data.
