#!/usr/bin/dyalogscript SESSION_FILE=/opt/mdyalog/19.0/64/unicode/default.dse

⎕SE.Link.Create # '.'
Tag  ← {'<',⍺,'>',⍵,'</',⍺,'>'}
files ← (⊃0⎕NINFO⍠1⍠'Recurse' 1,∘'/*.md')'.'

header ← '<link rel="stylesheet" href="/public/assets/style.css" type="text/css">'
header,← '<link rel="stylesheet" href=               "style.css" type="text/css">'

{('.html',⍨⍵/⍨0=∨\'.md'⍷⍵) 1 ⎕NPUT⍨ 'html' Tag ('head' Tag header),'body' Tag markdown⊃⎕NGET ⍵}¨files