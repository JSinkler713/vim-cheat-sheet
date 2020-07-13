# vim-cheat-sheet
A list of vim commands and their summary.

| Commands |  Summary |
|--|--|
|h j k l| Move <-, down, up, ->|
|:wq| Save and quit|
|dd|Delete the current line|
|A|Go into <insert> mode at the end of the line|
|GA|Go to the end of a document and go into <insert>  mode|
|b|Go to the beginning of the current word, or the previous word|
|#gg Ex: 14gg| Go to the beginning of the 14th line|
|a| Go into <insert> mode after the current character you are on|
|i| Go into <insert> mode before the current character you are on |
|yiw| yank the inner word, this is like copy, then you can use p to..|
|p| Paste whatever you either deleted or yanked with d or y|
|:%s/someWord/newWord/g | Search through your whole document and replace 'someWord' with 'newWord'|
|ciw| cut inner word, deleted a word you are on, and puts you into <insert> mode|
|u| undo|
|^ (I change to (0))|Takes you to the beginning of the line|
|diw|Deletes the entire word you are on, wherever you are within it|
|`ci)`|Given you are on a `(` paren, or within one, this cuts everything within it, and puts you in insert mode|
|`df(any character)` Ex: `df)`| This will deleted everything on the line from the cursor up to and including the next closing paren `)` it finds in the line|

