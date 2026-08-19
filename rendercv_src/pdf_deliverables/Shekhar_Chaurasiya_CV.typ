// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Shekhar Chaurasiya",
  title: "Shekhar Chaurasiya - CV",
  footer: context { [#emph[Shekhar Chaurasiya -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Aug 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(27, 67, 50),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(27, 67, 50),
  colors-links: rgb(45, 106, 79),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 8,
    day: 19,
  ),
)


= Shekhar Chaurasiya

#connections(
  [#connection-with-icon("location-dot")[Jaipur, Rajasthan, India]],
  [#link("mailto:shekharium@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[shekharium\@gmail.com]]],
  [#link("tel:+91-82339-49673", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[082339 49673]]],
  [#link("https://skc-coder.github.io/resume/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[skc-coder.github.io\/resume]]],
  [#link("https://linkedin.com/in/shekharcha", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[shekharcha]]],
  [#link("https://github.com/skc-coder", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[skc-coder]]],
  [#link("https://leetcode.com/u/user5730ZD", icon: false, if-underline: false, if-color: false)[#connection-with-icon("code")[user5730ZD]]],
)


== Professional Summary

Computer Science & Engineering graduate (#strong[B.Tech, 9.1\/10.0 CGPA]) with strong conceptual and practical grounding in low-level system programming, algorithm design, discrete mathematics, and Linux system administration.

Secured #strong[All India Rank 2098] (GATE Score: 644\/1000) out of #strong[211,020 national candidates] in #strong[GATE 2026 (CS & IT)] and #strong[AIR 392] in #strong[IIITH PGEE].

Experienced in writing memory-efficient C applications, developing custom browser extensions (Manifest V3), automating workflows on Fedora Linux Workstation via Python & Shell scripts, and building cloud automation pipelines.

Demonstrates strong technical ownership, meticulous attention to detail, ethical work standards, and a continuous drive for engineering excellence.

== Education

#education-entry(
  [
    #strong[Rajasthan Technical University], Computer Science & Engineering

    - #strong[CGPA:] 9.1 \/ 10.0

    - #strong[Relevant Coursework:] Data Structures & Algorithms, Discrete Mathematics, Operating Systems, Database Management Systems (DBMS), Computer Networks, System Programming, Microprocessors, Linear Algebra, Abstract Algebra (Group Theory).

    - #strong[Academic Standing:] Top-tier academic performance with a rigorous mathematical and theoretical foundation across core CS domains.

  ],
  [
    Jaipur, Rajasthan

    Aug 2022 – May 2026

  ],
  degree-column: [
    #strong[B.Tech]
  ],
)

== Competitive Examinations

- #strong[GATE 2026 (Computer Science & Information Technology):] #strong[All India Rank: 2098] out of #strong[211,020 registered candidates] (Top \~0.99\% nationwide) | #strong[GATE Score: 644 \/ 1000] | #strong[Registration No: CS26S33025126]. Demonstrated comprehensive problem-solving mastery in Data Structures, Algorithms, Discrete Mathematics, OS, DBMS, Theory of Computation, Digital Logic, and Computer Architecture. #emph[(Official Scorecard Attached)].

- #strong[IIITH PGEE (IIIT Hyderabad Postgraduate Entrance Exam):] #strong[All India Rank: 392] nationwide out of \~10,000--15,000 post-graduate engineering candidates.

== Certifications

- #strong[NPTEL Programming in Java:] Awarded #strong[Elite Certificate] with #strong[80\% Score] | Ranked among top national performers out of 14,693 candidates (Jan--Apr 2024).

- #strong[NPTEL Problem Solving Through Programming in C:] Awarded #strong[Elite Certificate] with #strong[73\% Score] out of 3,749 certified candidates (Jan--Apr 2023).

- #strong[NPTEL Programming in Modern C++:] Awarded #strong[61\% Final Score] | Completed 12-week national course covering C++ specifications, generic programming, and STL architecture out of 1,028 certified candidates (Jul--Oct 2023).

- #strong[Salesforce Certified AI Associate:] Credential ID: 6127333 (Issued May 2025) --- Covers AI fundamentals, ethical AI practices, and CRM AI concepts.

- #strong[Salesforce Certified Associate:] Credential ID: 6030076 (Issued April 2025) --- Validates platform architecture, user administration, and data management.

- #strong[Building with Google Gemini (Advanced & Ultra):] LinkedIn Learning | Certificate ID: 1df85a0a... (Issued Aug 2025) --- Generative AI prompt engineering, Gemini API SDKs, and software integration.

- #strong[Raspberry Pi Essential Training (2022):] LinkedIn Learning | Certificate ID: 20c6cecc... (Issued Sep 2025) --- Single-board hardware configuration, Linux GPIO interaction, and IoT setup.

- #strong[C Programming For Beginners -- Master the C Language:] Udemy (Jan 2024, 25.5 hours intensive coursework).

- #strong[HACK-AIETM-2024 Hackathon Certificate of Participation:] Issued by Arya Group of Colleges & AIETM, Jaipur (May 2024).

== Detailed Technical Skills

#strong[Discrete & Foundational Math:] Deep conceptual and problem-solving mastery in #strong[Discrete Mathematics] (Mathematical Logic, Propositional & Predicate Calculus, Set Theory, Relations & Functions, Combinatorics, Graph Theory, and Recurrence Relations), #strong[Linear Algebra], and #strong[Group Theory] (Abstract Algebra). Applied mathematical proof techniques and discrete structures directly to algorithmic analysis, gate logic verification, and GATE CS problem solving.

#strong[C & Modern C++:] #strong[Theoretical & Core Concepts:] Object-Oriented Programming (OOP) paradigms (polymorphic class hierarchies, inheritance, encapsulation), custom data structures, manual memory management (`malloc`\/`free`, pointers, stack allocation), templates, and operator overloading. #strong[Practical Usage:] Developed low-level parsing engines in C (Infix-to-Postfix converter and stack-based arithmetic evaluator) and backtracking algorithms (Sudoku Solver engine).

#strong[Python & Automation Scripting:] #strong[Theoretical & Practical Expertise:] Proficient in standard library modules, file handling, regular expressions, JSON parsing, PyDrive\/Google Drive API integration, and Telegram Bot API. #strong[Practical Usage:] Built cloud backup automation pipelines (`telegram-to-drive`), web scraping tools (`BeautifulSoup`), batch downloaders, logic evaluation tools, and task management CLI utilities.

#strong[Browser Extension Engineering:] #strong[Practical Usage (Manifest V3 & JavaScript):] Developed custom Chromium extensions (`ytmaster` \/ FocusTube, `webtools`) to enhance web navigation, automate hotkey search focusing, redirect image search providers, and eliminate video distractions.

#strong[Linux Systems Administration:] #strong[Practical Usage (Fedora Workstation):] Operating #strong[Fedora Linux Workstation] as primary personal OS. Engineered custom `Bash` automation scripts and `cron` jobs for system maintenance, backup execution, desktop environment workflows, and terminal productivity (`zsh`, `Vim`\/`Emacs`, `grep`, `find`, `sed`, `awk`).

#strong[Database Management & SQL:] #strong[Academic Knowledge & Fundamentals:] Solid theoretical understanding of Relational Database Management Systems (RDBMS), Entity-Relationship (ER) modeling, 1NF to 3NF\/BCNF normalization, Relational Algebra, ACID properties, and basic SQL query execution.

#strong[Developer Tools & Workflows:] #strong[Practical Usage:] Daily usage of `Git` and `GitHub` for version control, `Typst` for typesetting technical documentation, markdown vault notes, and modal text editors.

== Projects

#regular-entry(
  [
    #strong[GATE Exam Mock Test Interface & Portal Engine]

    #summary[Web Application | JavaScript, HTML5, Local Engine]

    - Built a custom offline-first mock test interface mirroring the official GATE examination environment for personal exam practice and simulation.

    - Implemented interactive virtual keypad controls, question palette status navigation (Attempted, Marked for Review, Unattempted), countdown timer management, and real-time score analytics.

    - Enabled zero-latency offline test execution without relying on external server connectivity.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Automated Test Series Data Pipeline & Archival Engine]

    #summary[Data Engineering & Archival | Python, JSON Data Pipeline]

    - Developed an automated data extraction and JSON indexing pipeline to structure and archive high-volume test series content for offline revision.

    - Built automated scripts (`download_all_tests.py`, `redownload_all_tests.py`) for batch processing, image asset caching, and structured schema formatting.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[PyQHub -- University Semester PYQ Platform]

    #summary[Web Application | TypeScript, Web Architecture]

    - Developed a web repository platform to accumulate, organize, and search previous year semester exam papers across technical universities (RTU, AKTU, and others).

    - Implemented structured course\/subject paper categorizations and fast search filtering to help university engineering students prepare for semester examinations.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[WebTools Browser Extension]

    #summary[Chrome Extension | Manifest V3, JavaScript, Chrome Extension API]

    - Engineered a Manifest V3 Chromium browser extension to optimize daily web browsing and search workflows.

    - Implemented global hotkey search bar focusing (instant '\/' shortcut), automatic Brave Images to Google Images redirection, and popup configuration management via Chrome Storage API.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[FocusTube (YT Master) Distraction-Free Extension]

    #summary[Chrome Extension | JavaScript, DOM Manipulation, YouTube API]

    - Built a specialized YouTube productivity extension designed to eliminate recommendation algorithms, hide feed clutter, and provide customizable UI element toggles.

    - Utilized Content Scripts injected at `document_start` and background Service Workers for zero-flicker UI modification.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Telegram to Google Drive Automated Cloud Pipeline]

    #summary[Cloud Automation & System Scripting | Python, Telegram API, PyDrive]

    - Architected an automated cloud ingestion pipeline in #strong[Python] that intercepts media files and document attachments from Telegram channels and streams them directly into #strong[Google Drive] storage.

    - Integrated Google Drive OAuth2 authentication and PyDrive API to manage file upload chunks, remote directory creation, and duplicate file prevention.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Infix to Postfix Converter & Expression Calculator Engine]

    #summary[Systems & Data Structures | C Language, Memory Management]

    - Designed and implemented a low-level mathematical expression parsing engine in #strong[C] that converts arithmetic expressions from Infix notation to Postfix (Reverse Polish Notation) using custom Stack structures.

    - Built expression evaluation logic handling full operator precedence (parentheses, exponentiation, multiplication, division, addition, subtraction).

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Boolean Truth Table & Logic Gate Generator]

    #summary[Computer Logic & Discrete Math | Python, Logic Gates]

    - Developed an automated Boolean logic truth table evaluator capable of parsing arbitrary logical expressions (AND, OR, NOT, XOR, Implication).

    - Dynamically evaluated truth values across all 2^n variable combinations and formatted structured tabular outputs for digital logic verification.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Sudoku Solver Engine]

    #summary[Algorithms & Backtracking | C++, Constraint Satisfaction]

    - Built an efficient 9x9 Sudoku puzzle solver using recursive #strong[Backtracking] algorithms and constraint satisfaction logic in #strong[C++].

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[TODO CLI & Terminal Task Manager]

    #summary[CLI Utility | Python, Linux File I\/O, JSON]

    - Developed a lightweight command-line task management tool in #strong[Python] tailored for fast Linux terminal execution without GUI overhead.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Fedora Linux Dotfiles & System Workflows]

    #summary[DevOps & System Configuration | Bash, Shell, Custom Configs]

    - Maintained a modular repository of personal #strong[Fedora Linux Workstation] dotfiles, shell aliases, Vim\/Emacs configurations, desktop environment settings, and custom terminal shortcuts.

  ],
  [
  ],
)
