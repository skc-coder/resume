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
  page-top-margin: 0.65in,
  page-bottom-margin: 0.65in,
  page-left-margin: 0.65in,
  page-right-margin: 0.65in,
  page-show-footer: false,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(27, 67, 50),
  colors-headline: rgb(0, 80, 72),
  colors-connections: rgb(0, 80, 72),
  colors-section-titles: rgb(27, 67, 50),
  colors-links: rgb(45, 106, 79),
  colors-footer: rgb(100, 140, 135),
  colors-top-note: rgb(100, 140, 135),
  typography-line-spacing: 0.6em,
  typography-alignment: "left",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Lato",
  typography-font-family-name: "Lato",
  typography-font-family-headline: "Lato",
  typography-font-family-connections: "Lato",
  typography-font-family-section-titles: "Lato",
  typography-font-size-body: 10pt,
  typography-font-size-name: 26pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 9pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: true,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: true,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: false,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.3cm,
  header-space-below-headline: 0.3cm,
  header-space-below-connections: 0.6cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "•",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "centered_without_line",
  section-titles-line-thickness: 0.4pt,
  section-titles-space-above: 0.55cm,
  section-titles-space-below: 0.25cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.1em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.15cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.04cm,
  entries-highlights-bullet:  "◦" ,
  entries-highlights-nested-bullet:  "◦" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0.04cm,
  entries-highlights-space-between-items: 0.04cm,
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


== Summary

Computer Science & Engineering graduate (#strong[B.Tech, 9.1\/10.0 CGPA]) with strong conceptual and practical grounding in low-level system programming, algorithm design, discrete mathematics, and Linux system administration.

Secured #strong[All India Rank 2098] (GATE Score: 644\/1000) out of #strong[211,020 national candidates] in #strong[GATE 2026 (CS & IT)] and #strong[AIR 392] in #strong[IIITH PGEE].

Experienced in writing memory-efficient C applications, developing custom browser extensions (Manifest V3), automating workflows on Fedora Linux Workstation via Python & Shell scripts, and building cloud automation pipelines.

== Education

#education-entry(
  [
    #strong[Rajasthan Technical University] -- Jaipur, Rajasthan

    B.Tech (CGPA 9.1 \/ 10.0) in Computer Science & Engineering

    - Relevant Coursework: Data Structures & Algorithms, Discrete Mathematics, Operating Systems, DBMS, Computer Networks, System Programming, Microprocessors, Linear Algebra, Abstract Algebra.

  ],
  [
    Aug 2022 – May 2026

  ],
)

== Competitive Examinations

- #strong[GATE 2026 (Computer Science & IT):] #strong[All India Rank 2098] out of 211,020 registered candidates (Top \~0.99\% nationwide) | #strong[GATE Score: 644 \/ 1000]. Demonstrated comprehensive problem-solving mastery across core Computer Science disciplines.

- #strong[IIITH PGEE (IIIT Hyderabad PGEE):] #strong[All India Rank 392] nationwide out of \~10,000--15,000 candidates.

== Certifications

- #strong[Programming in Java (NPTEL National Elite):] Awarded #strong[Elite Certificate (80\% Score)] | Top performer out of 14,693 candidates (Jan--Apr 2024).

- #strong[Problem Solving Through Programming in C (NPTEL National Elite):] Awarded #strong[Elite Certificate (73\% Score)] out of 3,749 candidates (Jan--Apr 2023).

- #strong[Programming in Modern C++ (NPTEL Elite):] Awarded #strong[61\% Score] | 12-week course covering C++ specifications & STL (Jul--Oct 2023).

- #strong[Salesforce Professional Certifications:] Salesforce Certified AI Associate (Credential ID: 6127333) & Salesforce Certified Associate (Credential ID: 6030076) (2025).

== Technical Skills

#strong[Foundational Math:] Discrete Mathematics, Linear Algebra, Abstract Algebra (Group Theory), Recurrence Relations

#strong[Systems & Languages:] C, Modern C++, Python, JavaScript, TypeScript, Bash, SQL

#strong[Tools & Automation:] Fedora Linux Workstation, Git, Vim\/Emacs, Manifest V3 Browser Extensions, PyDrive, Telegram API

== Projects

#regular-entry(
  [
    #strong[GATE Exam Mock Test Interface & Portal Engine]

    #summary[Web Application | JavaScript, HTML5, Local Engine]

    - Built offline-first mock test portal mirroring official GATE exam environment with virtual keypad and real-time score analytics.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Automated Test Series Data Pipeline & Archival Engine]

    #summary[Data Engineering | Python, JSON Data Pipeline]

    - Developed automated data extraction and JSON indexing pipeline to structure and archive practice test content.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[PyQHub -- University Semester PYQ Platform]

    #summary[Web Application | TypeScript, Web Architecture]

    - Developed web repository platform accumulating and searching previous year semester exam papers across technical universities.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[WebTools Browser Extension]

    #summary[Chrome Extension | Manifest V3, JavaScript]

    - Engineered Manifest V3 Chromium browser extension featuring global hotkey search bar focusing ('\/' shortcut) and Brave-to-Google image redirects.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[FocusTube (YT Master) Productivity Extension]

    #summary[Chrome Extension | JavaScript, Content Scripts]

    - Built YouTube productivity extension to eliminate recommendation algorithms, hide feed clutter, and toggle UI elements dynamically.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Telegram to Google Drive Automated Cloud Pipeline]

    #summary[Cloud Automation | Python, Telegram API, PyDrive]

    - Architected cloud ingestion pipeline streaming Telegram channel media directly into Google Drive via OAuth2.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Infix to Postfix Converter & Expression Calculator Engine]

    #summary[Systems Programming | C Language, Data Structures]

    - Implemented mathematical expression parsing engine in C converting Infix to Postfix using custom stack structures.

  ],
  [
  ],
)
