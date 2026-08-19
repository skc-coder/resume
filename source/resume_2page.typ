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
  v(6pt)
  text(fill: primary-color, weight: "bold", size: 11pt)[#upper(title)]
  v(-5pt)
  line(length: 100%, stroke: 0.9pt + secondary-color)
  v(3pt)
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

#v(3pt)

// PROFESSIONAL SUMMARY
#section-heading("Professional Summary")
Computer Science & Engineering graduate (B.Tech, *9.1/10.0 CGPA*) with strong conceptual and practical grounding in low-level system programming, algorithm design, discrete mathematics, and Linux system administration. Secured *All India Rank 2098* (GATE Score: 644/1000) out of *211,020 national candidates* in *GATE 2026 (CS & IT)* and *AIR 392* in *IIITH PGEE*. Experienced in writing memory-efficient C applications, developing custom browser extensions (Manifest V3), automating workflows on Fedora Linux Workstation via Python & Shell scripts, and building cloud automation pipelines.

// EDUCATION
#section-heading("Education & Academic Background")
#entry-header("Rajasthan Technical University", "Aug 2022 -- May 2026", "Bachelor of Technology (B.Tech) in Computer Science & Engineering", "CGPA: 9.1 / 10.0")
#v(2pt)
- *Relevant Coursework:* Data Structures & Algorithms, Discrete Mathematics, Operating Systems, DBMS, Computer Networks, System Programming, Microprocessors, Linear Algebra, Abstract Algebra (Group Theory).

// COMPETITIVE EXAMINATIONS & NATIONAL RANKINGS
#section-heading("Competitive Examinations & Verified Scorecards")
- *GATE 2026 (Computer Science & Information Technology):*
  - *All India Rank:* *2098* out of *211,020 registered candidates* (Top ~0.99% nationwide) | *GATE Score:* *644 / 1000*.
  - Demonstrated comprehensive problem-solving mastery across core Computer Science disciplines. *(Official Scorecard Attached)*.
- *IIITH PGEE (IIIT Hyderabad Postgraduate Entrance Exam):*
  - *All India Rank:* *392* nationwide out of ~10,000--15,000 post-graduate engineering candidates.

// INDUSTRY CERTIFICATIONS & CREDENTIALS
#section-heading("Industry Certifications & Professional Credentials")
- *NPTEL National Elite Certifications (MoE, Govt. of India):*
  - *Programming in Java:* Awarded *Elite Certificate* with *80% Score* | Top performer out of 14,693 candidates (Jan--Apr 2024).
  - *Problem Solving Through Programming in C:* Awarded *Elite Certificate* with *73% Score* out of 3,749 candidates (Jan--Apr 2023).
  - *Programming in Modern C++:* Awarded *61% Score* | 12-week course covering C++ specifications & STL (Jul--Oct 2023).
- *Salesforce Professional Certifications:*
  - *Salesforce Certified AI Associate* (Credential ID: 6127333) & *Salesforce Certified Associate* (Credential ID: 6030076) (2025).
- *LinkedIn Learning & Coursework:*
  - *Building with Google Gemini (Advanced & Ultra)* & *Raspberry Pi Essential Training (IoT)* --- LinkedIn Learning (2025).
  - *C Programming For Beginners -- Master the C Language:* Udemy (25.5 hours) | *HACK-AIETM-2024 Participation* (May 2024).

// DETAILED TECHNICAL SKILLS & PRACTICAL USAGE
#section-heading("Detailed Technical Skills & Practical Usage")
- *Discrete & Foundational Mathematics:* Deep problem-solving mastery in *Discrete Mathematics* (Logic, Calculus, Set Theory, Combinatorics, Graph Theory, Recurrence Relations), *Linear Algebra*, and *Group Theory*.
- *C & Modern C++:* Object-Oriented Programming (OOP) paradigms, manual memory management (`malloc`/`free`, pointers, stack allocation), templates, custom data structure engines (Infix-to-Postfix conversion, evaluation stack), and Sudoku solver engine.
- *Python & Automation Scripting:* Standard library, file I/O, regex, JSON parsing, PyDrive/Google Drive API integration, Telegram Bot API. Built cloud pipelines (`telegram-to-drive`), web scrapers (`BeautifulSoup`), logic tools, and task CLI utilities.
- *Browser Extension Engineering (Manifest V3 & JavaScript):* Developed custom Chromium extensions (`ytmaster` / FocusTube, `webtools`) for hotkey search focusing, image search redirects, and zero-flicker video UI modification.
- *Linux Systems Administration & Fedora Workstation:* Operating *Fedora Linux Workstation* as primary OS. Custom `Bash` scripts, `cron` jobs, zsh workflows, Vim/Emacs modal editing configs, dotfiles management (`skc-coder/.dotfiles`).
- *Database Management & SQL:* RDBMS fundamentals, ER modeling, Normalization (1NF to 3NF/BCNF), Relational Algebra, ACID properties, basic SQL queries (`JOINs`, subqueries).

// KEY ENGINEERING & TECHNICAL PROJECTS
#section-heading("Key Engineering & Technical Projects")

#entry-header("GATE Exam Mock Test Interface & Portal Engine", link("https://github.com/skc-coder/gate-core")[github.com/skc-coder/gate-core], "Web Application | JavaScript, HTML5, Local Test Engine", "")
#v(-2pt)
- Built a custom offline-first mock test interface mirroring the official GATE examination environment for personal exam simulation.
- Implemented interactive virtual keypad controls, question status navigation palette, countdown timer management, and real-time score analytics.

#v(2pt)

#entry-header("Automated Test Series Data Pipeline & Archival Engine", link("https://github.com/skc-coder/testseries_data")[github.com/skc-coder/testseries_data], "Data Engineering & Archival | Python, JSON Data Pipeline", "")
#v(-2pt)
- Developed an automated data extraction and JSON indexing pipeline to structure and archive practice test content for offline revision.

#v(2pt)

#entry-header("PyQHub -- University Semester PYQ Repository Platform", link("https://github.com/skc-coder/pyqhub")[github.com/skc-coder/pyqhub], "Web Application | TypeScript, Web Architecture", "")
#v(-2pt)
- Developed a web repository platform to accumulate, organize, and search previous year semester exam papers across technical universities (RTU, AKTU, and others).

#v(2pt)

#entry-header("WebTools Browser Extension", link("https://github.com/skc-coder/webtools")[github.com/skc-coder/webtools], "Chrome Extension | Manifest V3, JavaScript, Chrome Extension API", "")
#v(-2pt)
- Engineered a Manifest V3 Chromium browser extension featuring global hotkey search bar focusing ('/' shortcut) and automatic Brave to Google Images redirection.

#v(2pt)

#entry-header("FocusTube (YT Master) Distraction-Free Extension", link("https://github.com/skc-coder/ytmaster")[github.com/skc-coder/ytmaster], "Chrome Extension | JavaScript, DOM Manipulation, YouTube API", "")
#v(-2pt)
- Built a specialized YouTube productivity extension to eliminate recommendation algorithms, hide feed clutter, and toggle UI elements using Content Scripts at `document_start`.

#v(2pt)

#entry-header("Telegram to Google Drive Automated Cloud Pipeline", link("https://github.com/skc-coder/telegram-to-drive")[github.com/skc-coder/telegram-to-drive], "Cloud Automation & System Scripting | Python, Telegram API, PyDrive", "")
#v(-2pt)
- Architected an automated cloud ingestion pipeline in *Python* that intercepts media files from Telegram channels and streams them directly into *Google Drive* storage using OAuth2 and PyDrive API.

#v(2pt)

#entry-header("Infix to Postfix Converter & Expression Calculator Engine", link("https://github.com/skc-coder/Infix-to-postfix-and-calculator")[github.com/skc-coder/Infix-to-postfix-and-calculator], "Systems & Data Structures | C Language, Memory Management", "")
#v(-2pt)
- Designed and implemented a low-level mathematical expression parsing engine in *C* that converts Infix expressions to Postfix using custom Stack structures.

#v(2pt)

#entry-header("Boolean Truth Table & Logic Gate Generator", link("https://github.com/skc-coder/truth-table")[github.com/skc-coder/truth-table], "Computer Logic & Discrete Math | Python, Logic Gates", "")
#v(-2pt)
- Developed an automated Boolean logic truth table evaluator parsing arbitrary logical expressions across all $2^n$ variable combinations.

#v(2pt)

#entry-header("Sudoku Solver Engine", link("https://github.com/skc-coder/Sudoku-Solver")[github.com/skc-coder/Sudoku-Solver], "Algorithms & Backtracking | C++, Constraint Satisfaction", "")
#v(-2pt)
- Built an efficient $9 times 9$ Sudoku puzzle solver using recursive *Backtracking* algorithms and constraint satisfaction logic in *C++*.

#v(2pt)

#entry-header("Fedora Linux Dotfiles & System Workflows", link("https://github.com/skc-coder/.dotfiles")[github.com/skc-coder/.dotfiles], "DevOps & System Configuration | Bash, Shell, Custom Configs", "")
#v(-2pt)
- Maintained a modular repository of personal *Fedora Linux Workstation* dotfiles, shell aliases, Vim/Emacs configurations, desktop environment settings, and custom terminal shortcuts.
