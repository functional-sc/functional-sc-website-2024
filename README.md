# Functional SC Website 

The 2024-era website is generated from [Logseq](https://logseq.com/)

1. Load the Logseq graph found in `fpsc-website-graph`
2. edit copy
3. edit queries: unhide them by modifying `fpsc-website-graph/logseq/config.edn` and comment out `:block-hidden-properties` remember to re-hide before publishing
4. "Export Graph -> Export Public Pages" to `fpsc-website-published`

Use the scripts in `bin/` to upload to the webserver.
