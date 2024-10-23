tags:: Clojure, Logseq, non-technical, article
date:: 2024-10-15

- # 2024 Functional SC Website
-
- The newest iteration of this website is created with [Logseq](https://logseq.com), an open-source, **privacy-first knowledge management** and note-taking tool allowing you to organize thoughts, tasks and ideas in a graph-based, interconnected system using Markdown.
	-
- ![Knowledge_Graph.jpeg](../assets/Knowledge_Graph_1729645672029_0.jpeg)
-
- It happens to be written in [[Clojure]], runs an edited [BlueTeaFrog Theme](https://github.com/blueteafrog/logseq-oxfordblue-theme) and supports many features as outlined in [[Content Creation]] Guidelines.
-
- We love that Logseq is:
	- • local first
	- • highly-connected Markdown wiki
	- • file-based, easy to share and synchronize
	- • runs on Linux, Mac, Windows, Android, iPhone, ChromeOS and web
-
- The entire site is published as an SPA (Single Page App) and can be served by any static web-head like a CDN, Apache or Nginx.
-
- # Easy Publishing Process
- On your desktop or laptop, [download and install Logseq](https://logseq.com/downloads)
  logseq.order-list-type:: number
- Download the [Knowledge Graph from Github](https://github.com/functional-sc/functional-sc-website-2024/tree/main/fpsc-website-graph)
  logseq.order-list-type:: number
- On a desktop, launch Logseq, select "Add a new Graph" and point it to the directory `fpsc-website-graph`
  logseq.order-list-type:: number
- Edit until you're happy, then send a Pull Request in GitHub
  logseq.order-list-type:: number
	- note: you'll probably want to comment out the `:block-hidden-properties` line of `logseq/custom.edn` to see the page properties, tags and aliases.  Re-comment when you're done.
	  logseq.order-list-type:: number
- In the `...` menu Export Graph -> Export Public Pages
  logseq.order-list-type:: number
- If you're on Team FPSC, commit then run `bin/upload-content-only.sh`
  logseq.order-list-type:: number
-
- Like this:
- ![Knowledge_Graph_Publish.png](../assets/Knowledge_Graph_Publish_1729649988402_0.png)
-
- resources:
	- • https://Logseq.com
	- • https://github.com/functional-sc/functional-sc-website-2024
	- • https://discuss.logseq.com/t/new-to-logseq-start-here/8468
-
-
-
-
-
-
-
-
-