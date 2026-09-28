# Academic Information System

A database design project that takes a raw, flat academic dataset and normalizes it step by step into a clean relational schema, then implements and tests it in MySQL. Aligned with **SDG 4 (Quality Education)**.

In academic data systems, tidy and consistent data is essential, yet the dataset used here was still managed in a conventional, manual way. Student identity, course codes, and theory and practical grades were all crammed into one large flat table with no clear grouping, which makes the data hard to search, inefficient to store, and prone to errors during processing. Clean, well-structured data is essential for any academic information system, yet the dataset used here was managed in a conventional, manual way: student identity, course codes, and theory and practical grades were all packed into one large flat table. This makes information hard to look up and leaves the data prone to errors during processing, which works against SDG 4 (Quality Education).
This project documents how normalization turns that raw data into a tidy, related, ready-to-use database.

## Overview

The source data stores students, courses, grades, and semester results in one wide table. This causes insert, update, and delete anomalies and a lot of repeated data. This project:

- Identifies the anomalies and functional dependencies in the original dataset
- Normalizes it through **UNF → 1NF → 2NF → 3NF**, and verifies it also satisfies **BCNF**
- Designs an **ERD** for the final schema
- Implements the schema in **MySQL (XAMPP)** and validates it with SQL queries

## Repository Structure

```
.
├── dataset/
│   ├── raw_data.csv        # original dataset
│   └── 3nf Tables         # normalized tables (3NF)
├── ERD.jpg           # Entity Relationship Diagram
├── Laporan AOL DATABASE.docx # Full project report 
└── AOLDatabase.sql              # SQL schema + queries
```

## Dataset

- **Source:** *College Exam Result Dataset* (Kaggle)
- **Content:** B.Tech (branch AL) Semester 4 results, June 2025
- **Size:** 77 rows × 17 columns
- **Attribute groups:**
  - Student identity: `name`, `roll no`, `program`, `branch`, `semester`, `status`, `session`
  - Course results: `AL401` – `AL406`
  - Aggregate performance: `result description`, `SGPA`, `CGPA`

## Problems in the Original Data

| Anomaly | Example |
|---|---|
| **Insert** | A new course can't be added on its own because courses only exist as grade columns (`AL401`–`AL406`); a new student without grades needs NULL values. |
| **Update** | Changing a branch, session, or status means editing many rows and risking inconsistency. |
| **Delete** | Deleting one student record also erases course, grade, and semester information. |

## Normalization Process

| Step | What was done |
|---|---|
| **UNF** | Repeating groups (`AL401`–`AL406` as separate columns), non-atomic rows, redundant student data. |
| **1NF** | Turned course columns into rows so each row is one student + one course; all values atomic. |
| **2NF** | Removed partial dependencies (e.g. student attributes depend only on `RollNo`, course type only on `CourseID`) by splitting into separate tables. |
| **3NF** | Removed the transitive dependency `RollNo → Branch → Program` by adding a `Branch` table. |
| **BCNF** | Verified every determinant is a superkey, so the schema already satisfies BCNF. |

## Final Schema

Five tables:

- **Branch**: branch and program
- **Mahasiswa** (`msmahasiswa`): student master data
- **Mata_Kuliah**: course master data (including course type)
- **Hasil_Mata_Kuliah**: grade per student per course (resolves the many-to-many between students and courses)
- **Hasil_Semester** (`mshasilSemester`): SGPA, CGPA, and result description per student

**Relationships**

- Branch → Mahasiswa: one-to-many
- Mahasiswa → Hasil_Mata_Kuliah: one-to-many
- Mata_Kuliah → Hasil_Mata_Kuliah: one-to-many
- Mahasiswa → Hasil_Semester: one-to-one

## Tools

- **Kaggle**: dataset source
- **Spreadsheet**: anomaly identification and step-by-step normalization tables
- **Visual Paradigm**: ERD design
- **XAMPP (MySQL)**: physical database implementation and query testing
- **Gemini & ChatGPT**: used to double-check anomalies and normalization steps (see notes below)

## How to Run

1. Start **Apache** and **MySQL** in the XAMPP Control Panel.
2. Open **phpMyAdmin** and create a new database.
3. Import `hasil .sql` into that database.
4. Run the sample queries below (or your own) in the SQL tab.

## Notes on Using AI

AI tools helped review the structure and check normalization steps, but they only saw column names, not the actual data, so they worked from assumptions. Two mistakes were caught and corrected manually:

- The AI suggested adding columns such as `CourseName` and `BranchID` that weren't justified by the dataset.
- The AI jumped from 1NF straight to 3NF by removing partial dependencies too early. 1NF only requires atomic values; partial dependencies are removed in 2NF.

## Scope
- Normalization is limited to 3NF (with a BCNF check).
- The project covers the database (backend) design only; no application front end.

## Author

[Your Name]
