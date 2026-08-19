#set page(
  paper: "a4",
  margin: (x: 1.3cm, y: 1.1cm),
)
#set text(
  font: "Liberation Sans",
  size: 9.5pt,
  fill: rgb("#111111")
)

#let primary-color = rgb("#1a365d")
#let secondary-color = rgb("#2b6cb0")
#let text-color = rgb("#2d3748")

#let section-heading(title) = {
  v(8pt)
  text(fill: primary-color, weight: "bold", size: 11pt)[#upper(title)]
  v(-5pt)
  line(length: 100%, stroke: 0.9pt + secondary-color)
  v(4pt)
}

#let entry-header(title, right-title, subtitle, right-subtitle) = {
  block(width: 100%)[
    *#title* #h(1fr) *#right-title* \
    #if subtitle != "" [#subtitle] #if right-subtitle != "" [#h(1fr) *#right-subtitle*]
  ]
}

#let icon(path) = {
  box(height: 9pt, baseline: 1.5pt, image(path))
}

// HEADER
#align(center)[
  #text(size: 22pt, weight: "bold", fill: primary-color)[SHEKHAR CHAURASIYA] \
  #v(3pt)
  #text(size: 9pt, fill: text-color)[
    Jaipur, Rajasthan, India | #icon("icons/phone.svg") +91 823-394-9673 | +91 988-704-4815 | #icon("icons/email.svg") shekharium\@gmail.com \
    #icon("icons/github.svg") #link("https://github.com/skc-coder")[github.com/skc-coder] | #icon("icons/linkedin.svg") #link("https://www.linkedin.com/in/shekharcha/")[linkedin.com/in/shekharcha] | #icon("icons/leetcode.svg") #link("https://leetcode.com/u/user5730ZD/")[leetcode.com/u/user5730ZD]
  ]
]

#v(4pt)

// PROFESSIONAL SUMMARY
#section-heading("Professional Summary")
Computer Science & Engineering graduate (B.Tech, *9.1/10.0 CGPA*) with strong conceptual and practical grounding in low-level system programming, algorithm design, discrete mathematics, and Linux system administration.

Secured *All India Rank 2098* (GATE Score: 644/1000) out of *211,020 national candidates* in *GATE 2026 (CS & IT)* and *AIR 392* in *IIITH PGEE*.

Experienced in writing memory-efficient C applications, developing custom browser extensions (Manifest V3), automating workflows on Fedora Linux Workstation via Python & Shell scripts, and building cloud automation pipelines.

Demonstrates strong technical ownership, meticulous attention to detail, ethical work standards, and a continuous drive for engineering excellence.

// EDUCATION
#section-heading("Education & Academic Background")
#entry-header("Rajasthan Technical University", "Aug 2022 -- May 2026", "Bachelor of Technology (B.Tech) in Computer Science & Engineering", "CGPA: 9.1 / 10.0")
#v(2pt)
- *Relevant Coursework:* Data Structures & Algorithms, Discrete Mathematics, Operating Systems, Database Management Systems (DBMS), Computer Networks, System Programming, Microprocessors, Linear Algebra, Abstract Algebra (Group Theory).
- *Academic Standing:* Top-tier academic performance with a rigorous mathematical and theoretical foundation across core CS domains.

// COMPETITIVE EXAMINATIONS & NATIONAL RANKINGS
#section-heading("Competitive Examinations & Verified Scorecards")
- *GATE 2026 (Computer Science & Information Technology):*
  - *All India Rank:* *2098* out of *211,020 registered candidates* (Top ~0.99% nationwide).
  - *GATE Score:* *644 / 1000* | *Registration No:* CS26S33025126.
  - Demonstrated comprehensive problem-solving mastery in Data Structures, Algorithms, Discrete Mathematics, OS, DBMS, Theory of Computation, Digital Logic, and Computer Architecture. *(Official Scorecard Attached)*.
- *IIITH PGEE (IIIT Hyderabad Postgraduate Entrance Exam):*
  - *All India Rank:* *392* nationwide out of ~10,000--15,000 post-graduate engineering candidates.

// INDUSTRY CERTIFICATIONS & CREDENTIALS
#section-heading("Industry Certifications & Professional Credentials")
- *NPTEL National Elite Certifications (Ministry of Education, Govt. of India):*
  - *Programming in Java:* Awarded *Elite Certificate* with *80% Score* | Ranked among top national performers out of 14,693 candidates (Jan--Apr 2024).
  - *Problem Solving Through Programming in C:* Awarded *Elite Certificate* with *73% Score* out of 3,749 certified candidates (Jan--Apr 2023).
  - *Programming in Modern C++:* Awarded *61% Final Score* | Successfully completed intensive 12-week national course covering C++ specifications, generic programming, and STL architecture out of 1,028 certified candidates (Jul--Oct 2023).
- *Salesforce Professional Certifications:*
  - *Salesforce Certified AI Associate:* Credential ID: 6127333 (Issued May 2025) --- Covers AI fundamentals, ethical AI practices, and CRM AI concepts.
  - *Salesforce Certified Associate:* Credential ID: 6030076 (Issued April 2025) --- Validates platform architecture, user administration, and data management.
- *LinkedIn Learning Certifications:*
  - *Building with Google Gemini (Advanced & Ultra):* Certificate ID: `1df85a0a...` (Issued Aug 2025) --- Generative AI prompt engineering, Gemini API SDKs, and software integration.
  - *Raspberry Pi Essential Training (2022):* Certificate ID: `20c6cecc...` (Issued Sep 2025) --- Single-board hardware configuration, Linux GPIO interaction, and IoT setup.
- *Udemy & Campus Certifications:*
  - *C Programming For Beginners -- Master the C Language:* Issued by Udemy (Jan 2024, 25.5 hours intensive coursework). *(Independent online professional course, non-degree)*.
  - *HACK-AIETM-2024 Hackathon Certificate of Participation:* Issued by Arya Group of Colleges & AIETM, Jaipur (May 2024).

// DETAILED TECHNICAL SKILLS & PRACTICAL USAGE
#section-heading("Detailed Technical Skills & Practical Usage")
- *Discrete Mathematics & Foundational Mathematics:*
  - *Core Mathematical Expertise:* Deep conceptual and problem-solving mastery in *Discrete Mathematics* (Mathematical Logic, Propositional & Predicate Calculus, Set Theory, Relations & Functions, Combinatorics, Graph Theory, and Recurrence Relations), *Linear Algebra*, and *Group Theory* (Abstract Algebra). Applied mathematical proof techniques and discrete structures directly to algorithmic analysis, gate logic verification, and GATE CS problem solving.
- *C & Modern C++:*
  - *Theoretical & Core Concepts:* Object-Oriented Programming (OOP) paradigms (polymorphic class hierarchies, inheritance, encapsulation), custom data structures, manual memory management (`malloc`/`free`, pointers, stack allocation), templates, and operator overloading.
  - *Practical Usage:* Developed low-level parsing engines in C (Infix-to-Postfix converter and stack-based arithmetic evaluator) and backtracking algorithms (Sudoku Solver engine).
- *Python & Automation Scripting:*
  - *Theoretical & Practical Expertise:* Proficient in standard library modules, file handling, regular expressions, JSON parsing, PyDrive/Google Drive API integration, and Telegram Bot API.
  - *Practical Usage:* Built cloud backup automation pipelines (`telegram-to-drive`), web scraping tools (`BeautifulSoup`), batch downloaders, logic evaluation tools, and task management CLI utilities.
- *Browser Extension Engineering (Manifest V3 & JavaScript):*
  - *Practical Usage:* Developed custom Chromium extensions (`ytmaster` / FocusTube, `webtools`) to enhance web navigation, automate hotkey search focusing, redirect image search providers, and eliminate video distractions.
- *Linux Systems Administration & Fedora Workstation:*
  - *Practical Usage:* Operating *Fedora Linux Workstation* as primary personal OS. Engineered custom `Bash` automation scripts and `cron` jobs for system maintenance, backup execution, desktop environment workflows, and terminal productivity (`zsh`, `Vim`/`Emacs`, `grep`, `find`, `sed`, `awk`).
- *Database Management & SQL:*
  - *Academic Knowledge & Fundamentals:* Solid theoretical understanding of Relational Database Management Systems (RDBMS), Entity-Relationship (ER) modeling, 1NF to 3NF/BCNF normalization, Relational Algebra, ACID properties, and basic SQL query execution.
- *Developer Tools & Professional Workflows:*
  - *Practical Usage:* Daily usage of `Git` and `GitHub` for version control, `Typst` for typesetting technical documentation, markdown vault notes, and modal text editors.

// KEY ENGINEERING & TECHNICAL PROJECTS
#section-heading("Key Engineering & Technical Projects")

#entry-header("GATE Exam Mock Test Interface & Portal Engine", link("https://github.com/skc-coder/gate-core")[github.com/skc-coder/gate-core], "Web Application | JavaScript, HTML5, Local Test Engine", "")
#v(-2pt)
- Built a custom offline-first mock test interface mirroring the official GATE examination environment for personal exam practice and simulation.
- Implemented interactive virtual keypad controls, question palette status navigation (Attempted, Marked for Review, Unattempted), countdown timer management, and real-time score analytics.
- Enabled zero-latency offline test execution without relying on external server connectivity.

#v(4pt)

#entry-header("Automated Test Series Data Pipeline & Archival Engine", link("https://github.com/skc-coder/testseries_data")[github.com/skc-coder/testseries_data], "Data Engineering & Archival | Python, JSON Data Pipeline", "")
#v(-2pt)
- Developed an automated data extraction and JSON indexing pipeline to structure and archive high-volume test series content for offline revision.
- Built automated scripts (`download_all_tests.py`, `redownload_all_tests.py`) for batch processing, image asset caching, and structured schema formatting.

#v(4pt)

#entry-header("PyQHub -- University Semester PYQ Repository Platform", link("https://github.com/skc-coder/pyqhub")[github.com/skc-coder/pyqhub], "Web Application | TypeScript, Web Architecture", "")
#v(-2pt)
- Developed a web repository platform to accumulate, organize, and search previous year semester exam papers across technical universities (RTU, AKTU, and others).
- Implemented structured course/subject paper categorizations and fast search filtering to help university engineering students prepare for semester examinations.

#v(4pt)

#entry-header("WebTools Browser Extension", link("https://github.com/skc-coder/webtools")[github.com/skc-coder/webtools], "Chrome Extension | Manifest V3, JavaScript, Chrome Extension API", "")
#v(-2pt)
- Engineered a Manifest V3 Chromium browser extension to optimize daily web browsing and search workflows.
- Implemented global hotkey search bar focusing (instant '/' shortcut), automatic Brave Images to Google Images redirection, and popup configuration management via Chrome Storage API.

#v(4pt)

#entry-header("FocusTube (YT Master) Distraction-Free Extension", link("https://github.com/skc-coder/ytmaster")[github.com/skc-coder/ytmaster], "Chrome Extension | JavaScript, DOM Manipulation, YouTube API", "")
#v(-2pt)
- Built a specialized YouTube productivity extension designed to eliminate recommendation algorithms, hide feed clutter, and provide customizable UI element toggles.
- Utilized Content Scripts injected at `document_start` and background Service Workers for zero-flicker UI modification.

#v(4pt)

#entry-header("Telegram to Google Drive Automated Cloud Pipeline", link("https://github.com/skc-coder/telegram-to-drive")[github.com/skc-coder/telegram-to-drive], "Cloud Automation & System Scripting | Python, Telegram API, PyDrive", "")
#v(-2pt)
- Architected an automated cloud ingestion pipeline in *Python* that intercepts media files and document attachments from Telegram channels and streams them directly into *Google Drive* storage.
- Integrated Google Drive OAuth2 authentication and PyDrive API to manage file upload chunks, remote directory creation, and duplicate file prevention.

#v(4pt)

#entry-header("Infix to Postfix Converter & Expression Calculator Engine", link("https://github.com/skc-coder/Infix-to-postfix-and-calculator")[github.com/skc-coder/Infix-to-postfix-and-calculator], "Systems & Data Structures | C Language, Memory Management", "")
#v(-2pt)
- Designed and implemented a low-level mathematical expression parsing engine in *C* that converts arithmetic expressions from Infix notation to Postfix (Reverse Polish Notation) using custom Stack structures.
- Built expression evaluation logic handling full operator precedence (parentheses, exponentiation, multiplication, division, addition, subtraction).

#v(4pt)

#entry-header("Boolean Truth Table & Logic Gate Generator", link("https://github.com/skc-coder/truth-table")[github.com/skc-coder/truth-table], "Computer Logic & Discrete Math | Python, Logic Gates", "")
#v(-2pt)
- Developed an automated Boolean logic truth table evaluator capable of parsing arbitrary logical expressions (AND, OR, NOT, XOR, Implication).
- Dynamically evaluated truth values across all $2^n$ variable combinations and formatted structured tabular outputs for digital logic verification.

#v(4pt)

#entry-header("Sudoku Solver Engine", link("https://github.com/skc-coder/Sudoku-Solver")[github.com/skc-coder/Sudoku-Solver], "Algorithms & Backtracking | C++, Constraint Satisfaction", "")
#v(-2pt)
- Built an efficient $9 times 9$ Sudoku puzzle solver using recursive *Backtracking* algorithms and constraint satisfaction logic in *C++*.

#v(4pt)

#entry-header("TODO CLI & Terminal Task Manager", link("https://github.com/skc-coder/TODO-CLI")[github.com/skc-coder/TODO-CLI], "CLI Utility | Python, Linux File I/O, JSON", "")
#v(-2pt)
- Developed a lightweight command-line task management tool in *Python* tailored for fast Linux terminal execution without GUI overhead.

#v(4pt)

#entry-header("Fedora Linux Dotfiles & System Workflows", link("https://github.com/skc-coder/.dotfiles")[github.com/skc-coder/.dotfiles], "DevOps & System Configuration | Bash, Shell, Custom Configs", "")
#v(-2pt)
- Maintained a modular repository of personal *Fedora Linux Workstation* dotfiles, shell aliases, Vim/Emacs configurations, desktop environment settings, and custom terminal shortcuts.
