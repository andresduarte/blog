#lang pollen

◊(require css-tools/column css-tools/core css-tools/transition)

◊(make-media-query 23 11 1000 40)

◊(define default-margin "2.5rem")
◊(define paragraph-space "0.8rem")
◊(define anchor-hover-color "#fbf3f3")
◊; Modified color to pink-ish.
* {
  padding: 0;
  margin: 0;
  border: 0;
  font-size: inherit;
  font-weight: inherit;
  box-sizing: border-box;
}

◊;FADE : adds red circle to ouside links
div.margin-note a:after,
p a:after {
    position: relative;
    content: "\FEFF°"; ◊; Red circle for exterior.
    margin-left: 0.10em;
    font-size: 90%;
    top: -0.10em;
    color: #933;}

p a.xref:after,
div.margin-note a.xref:after {
    content: none;
    }

p a.xref {
  content: none;
  font-family: "charter SmCap BT"; ◊; Small caps for interior.
  ◊(make-css-small-caps)
}

div.margin-note a.xref {
  content: none;
  font-family: 'Dosis', sans-serif; ◊; Different font for margin.
  font-weight: 600;
  ◊(make-css-small-caps)
}
◊;FIN : adds red circle to links

p {
  line-height: 1.4;
  font-size: 1px;
  margin-bottom: ◊|paragraph-space|;
}

strong {
  font-weight: bolder;
}

h1, .chapter {
  border-bottom: dashed 1px black;
  padding-bottom: 6px;
  margin-top: 0.1rem;
  margin-bottom: 0.8rem;
  font-size: 110%;
  line-height: 1.1;
}


h2, .section {
  padding-bottom: 6px;
  margin-top: 2rem;
  margin-bottom: 0.8rem;
  font-size: 100%;
  line-height: 1.1;
  color: gray;
}

.home-image {
 width: 22rem;
 margin-top: 1rem;
 margin-bottom: 1rem;
}

.home-overlay, .home-link {
  background: rgb(250, 250, 250);
}

.home-link {
  display: inline-block;
  padding: 1rem;
  width: 22rem;
}

.home-overlay {
    background-size: 22rem;
    background-repeat: no-repeat;
    width: 22rem;
    overflow: auto;
    border: 1px solid gray;
     margin-top: 2rem;
     margin-bottom: 2rem;
}

.home-overlay-inner {
  background: rgb(250, 250, 250);
  opacity: 0;
  transition: opacity 0.3s;
  min-height: 23rem;
  }

.home-overlay-inner:hover {
  opacity: 0.98;
  transition: opacity 0.3s;
  }

.home-overlay-inner ul {
 padding: 0;
 margin: 2rem;
 margin-left: 3rem;
 margin-right: 1.5rem;
 height: 100%;
 }

 .home-overlay-inner ol {
  padding: 0;
  margin: 2rem;
  margin-left: 3rem;
  margin-right: 1.5rem;
  height: 100%;
  }

.home-overlay-inner p {
  font-size: 85%;
  font-family: "concourse-t3";
}

.toc h3 {
  font-weight: bold;
  margin-bottom: 1rem;
}

.toc div {
  margin-bottom: 2rem;
}

.toc ul {
  width: 100%;
  margin-bottom: 2rem;
  -webkit-columns: 2;
}

.toc li {
  line-height: 1.2;
  margin: 0;
  margin-bottom: 0.5rem;
  display: inline-block; ◊; prevents borders from wrapping between columns
  width: 100%; ◊; makes each li take one row
}


◊; FADE : Modified (border-top, font).




  ◊; FIN : Modified (border-top, font).



.font-headline {
  font-family: 'Teko', sans-serif;
  font-size: 180%;
  margin-bottom: 1rem;
  text-transform: uppercase;
}

.dmb:after{
    content: "the TFL font collection";
    weight: normal;
    font-size: 70%;
    margin-left: 1rem;
    ◊(make-css-small-caps)
}

.hanging-topic, .margin-note {
  position: absolute;
  right: 0.5rem;
  width: 7rem;
  float: right;
  text-align: left;
}

.margin-note {
  font-size: 82%;
  margin-bottom: 1rem; ◊; prevents two asides from adjacency
  font-family: 'Dosis', sans-serif; ◊; Modified font.
  line-height: 1.35;
  color: #667; ◊; Modified color.
}

.topic {
  font-weight: bolder;
  border-bottom: dashed 1px black;
  padding-bottom: 6px;
  margin-top: 0.1rem;
  margin-bottom: 0.8rem;
  font-size: 110%;
  line-height: 1.1;
}

.hanging-topic p {
  font-style: italic;
  font-size: 95%;
  line-height: 1.2;
}

◊; FADE : adds top line.
.hanging-topic {
margin-bottom: 2em;
border-top: solid 2px black;
padding-top: 6px;
}
◊; FIN : adds top line.



html {
    height: 100%;
}

body {
  position: relative; ◊; this establishes body as reference container
  padding: 0;
  margin-left: auto;
  margin-right: auto;
  width:100%;
  max-width:1000px;
  min-width:520px;
  min-height: 100%;
  ◊(make-css-kerning)
  ◊(make-css-ligatures)
  color: #444;
}

◊(define body-left-margin "4rem")

body > * {
font-size: 100%;
margin-left: ◊|body-left-margin|;
margin-right: ◊|default-margin|;
}


◊(define content-width "29rem")
#content {
    width: ◊|content-width|;
    padding: 4rem 0 8rem 0;
}




#doc {
  font-family: "source sans pro";
  color: #222; ◊; Added this color, unsure about it's effect.
}

h2 {
}


em {
  font-style: italic;
}

a {
  text-decoration: none;
  color: inherit;
}

a:hover {
  background: ◊|anchor-hover-color|;

}

a, a:hover {
  transition: background 0.2s;
}

a.xref {
  content: none;
  font-family: "charter SmCap BT";
  ◊(make-css-small-caps)
}


img {
  width: 100%;
}

.bordered {
  border: 1px solid gray;
}


p + .indented {
  margin-top: 1rem;
}

.indented + p {
  margin-top: 1rem;
}

.indented, .book-description {
  margin-left: 2.5rem;
  margin-right: 2.5rem;
  margin-bottom: ◊|paragraph-space|;
}

.book-description {
  margin-bottom: 1.2rem;
}

font-desc {
  display: block;
  font-size: 75%;
  -webkit-columns: 2;
}

font-desc a.xref {
  font-family: "concourse-c6";
}

ul.subnav {
  ◊make-css-columns[#:count 2]
}

ul.subnav li {
  display: inline-block;
  width: 100%;
  margin-bottom: 0.8rem;
}

table.captioned {
  width: 90%;
}

table.captioned + table.captioned {
  margin-top: -0.5rem;
}

table.captioned td {
    border: 0;
    vertical-align: baseline;
}

.caption, .caption-runin {
  font-family: "concourse-c4";
}

.caption-runin {
    margin-right: 0.3rem;
}

.caption {
  right: 4rem;
  border: 0;
}

.os {
  font-family: "concourse-c6";
  ◊(make-css-small-caps);
}

.os:after {
  content: " | ";
}

sig {
  display: block;
  margin-top: 1.5rem;
  text-align: right;
  font-family: "charter SmCap BT"; ◊; Modified font.
  ◊(make-css-small-caps)
}

sig:before {
  content: "— ";
}


.omission {
  height: 0.2rem;
  border-bottom: 1px dashed gray;
  margin-bottom: ◊|paragraph-space|;
}

.midbar{
  margin-top: 1em;
  margin-bottom: 1em;
  padding-bottom: 0.6em;
  border-bottom: 1px solid gray;
  margin-left: 35%;
  margin-right: 35%;
}

◊; FADE : special omission.
.exclusion {
  height: 0.2rem;
  border-bottom: 1px solid #DC702E;
  margin-bottom: ◊|paragraph-space|;
}

.nobar {
  height: 0.2rem;
  margin-bottom: ◊|paragraph-space|;
}
◊; FIN : special omission.

p, li {
    font-size: 0.9rem;
    margin-bottom: 0.8rem;
}

ul li {
    list-style: none;
    margin-left: 1.35rem;
    padding-left: 1.15rem; ◊; adds to 2.5rem, same as margin-left for ol li
    margin-bottom: 0.7em;
    font-size: 95%;
}

div#doc ul li:before {
  font-family: "charter";
  content: "•"; ◊; using concourse-t3-index, this will come out as an arrow
  float:left;
  margin-left: -2.5rem;
  margin-top: 0.1rem;
}

div#doc div.toc ul li:before  {
  content: none;

}



ol li {
◊; see firefox.css for an override of this value.
margin-left: 1.35rem;
padding-left: 1.15rem; ◊; adds to 2.5rem, same as margin-left for ol li
margin-bottom: 0.7em;
font-size: 95%;
}

ol li:before {
float:left;
margin-left: -2.5rem;
margin-top: 0.1rem;
}

ol li p {
  font-family: "charter"; ◊; changes font back for body of list item
}

ul.btw {
  margin-top: 2rem;
}

#btw-title {
display: block;
text-align: center;
font-family: '"concourse-c6"';
font-size: 80%;
◊(make-css-caps)
font-weight: bolder;
letter-spacing: 2px;
margin-bottom: 1em;
padding-bottom: 0.6em;
border-bottom: 1px solid gray;
margin-left: 35%;
margin-right: 35%;
}

.btw li {
list-style: none;
margin-left: 1.35rem;
padding-left: 1.15rem; ◊; adds to 2.5rem, same as margin-left for ol li
margin-bottom: 0.7em;
font-size: 95%;
}

.btw li:before {
font-family: "charter";
content: "•"; ◊; using concourse-t3-index, this will come out as an arrow
float:left;
margin-left: -2.5rem;
margin-top: 0.1rem;
}


.subhead {
  font-family: "charter SmCap BT"; ◊; Modified font.
  font-weight: bolder;
  ◊(make-css-small-caps)
  margin-top: 1.2rem;
  margin-bottom: 0.5rem;
}

.mono {
  font-family: "Source Code Pro"; ◊; Modified font.
}


.glyph:before {
  content: "( ";
}

.glyph:after {
  content: " )";
}


.madlib {
  display: inline-block;
  font-family: "Source Sans Pro"; ◊; Modified font, effect in doubt.
  font-size: 50%;
  font-weight: bolder;
  position: relative;
  top: 0.35rem;
  padding-left: 0.2rem;
  padding-right: 0.2rem;
  text-transform: uppercase;
}

.font-details {
  padding-top: 0.5rem;
  margin-top: 1.5rem;
  margin-bottom: 1.5rem;
  padding: 1rem 1rem 0.5rem 1rem;
  border-top: 1px solid gray;
  border-bottom: 1px solid gray;
  background: #f6f6f6;
  font-family: "Source Sans Pro"; ◊; Modified font, effect in doubt.
  line-height: 1.40;
}

.font-details p {
    font-size: 80%;
}

table { ◊; basic table format, based on shortcut table
margin-bottom: 1.5em;
border-collapse: collapse;
width: 30%;
margin-left: 35%;
}

table a {
  border: 0;
}

◊; technique for getting inner borders only
tr + tr + tr {
border-top: 1px solid gray;
}
td + td {

}


td {
padding: 0.4em;
text-align: center;
}

.buy-table {
    width: 100%;
    margin-top: 1.5rem;
}

th {
font-family: "Source Sans Pro"; ◊; Modified font, effect in doubt.
font-weight: normal;
text-transform: lowercase;
font-size: 85%;
padding: 0.3rem 0.5rem 0.3rem 0.5rem;
line-height: 1.05;
}



.buy-table td {
    padding: 0;
    height: 3.5rem;
    border: 0;
}

a.buylink, .buy-table td a {
    height: 100%;
    width: 100%;
    background: #a33;
    color: white;
    padding: 0.3em 0.5em 0.3em 0.5em;
    border-radius: 1em;
    font-family: "Source Sans Pro"; ◊; Modified font, effect in doubt.
    ◊(make-css-caps);
    letter-spacing: 0.04rem;
    border: none;
}

.font-sample a.buylink {
  font-size: 80%;
}

.font-sample a.buylink:before {
  content: "available from "
}

.font-sample a[href$="pdf"] {
    display: inline-block;
    border: 2px solid gray;
    width: 70%;
}

.font-sample h3 {
    font-family: "advocate-c43";
    font-size: 170%;
    font-weight: normal;
    text-transform: uppercase;
    width: 71%;
    margin-bottom: 3rem;
}

a.buylink:hover, .buy-table td a:hover {
    background: #e33;
    text-decoration: none;
}

a.buylink:active, .buy-table td a:active {
    background: #ccc;
}



.mb-font-specimen {
font-size:150%;
line-height:1.20;
white-space:nowrap;
◊(make-css-editable);
}




◊(define double-quote-width .50)
◊(define single-quote-width (/ double-quote-width 2))

dquo, dquo-pull {
margin-left: ◊(- double-quote-width)em;
}

dquo-push {
margin-left: ◊(+ double-quote-width)em;
}

squo, squo-pull {
margin-left: ◊(- single-quote-width)em;
}

squo-push {
margin-left: ◊(+ single-quote-width)em;
}

◊; hanging quotes don't work on right-aligned blocks
.margin-note dquo-push, .margin-note squo-push {
  display: none;
}
.margin-note dquo-pull, .margin-note squo-pull {
  margin-left: inherit;
}





◊;;;;;;;;;;;;;;;;;;;;;;;;;
◊; Special styles for -main.html template
◊;;;;;;;;;;;;;;;;;;;;;;;;;

◊(define nav-width "3rem")
◊(define big-nav-width "8rem")


◊;FADE : blue side links.
#prev .nav-inner,
#next .nav-inner {
  display: block;
  position: fixed;
  top: 0;
  bottom: 0;
  width: 3.5rem; /* careful not to overlap the feedback links or code copy links */
  font-family: concourse-t3;
  color: rgba(0, 0, 0, 0);
  -moz-transition-property: color;
  -webkit-transition-property: color;
  transition-property: color;
  -moz-transition-duration: 0.15s;
  -webkit-transition-duration: 0.15s;
  transition-duration: 0.15s;

  padding-top: 10rem;
  -moz-transition-property: border-color;
  -webkit-transition-property: border-color;
  transition-property: border-color;
  -moz-transition-duration: 0.15s;
  -webkit-transition-duration: 0.15s;
  transition-duration: 0.15s;
}

#prev .nav-inner {
  border-left: 0.8rem solid white;
}

#next .nav-inner {
    border-right: 0.8rem solid white;
}

#prev .nav-inner,
#next .nav-inner {
  background: none;
  -moz-transition-property: border-color;
  -webkit-transition-property: border-color;
  transition-property: border-color;
  -moz-transition-duration: 0.15s;
  -webkit-transition-duration: 0.15s;
  transition-duration: 0.15s;
}

#prev .nav-inner:hover {
  border-left-color: #f2f8fa;
}

#next .nav-inner:hover {
  border-right-color: #f2f8fa;
}

#prev .nav-inner {
  left: 0;
  padding-left: 1rem;
}

#next .nav-inner {
  right: 0;
  padding-right: 1rem;
}
◊;FIN : blue side links.

#prev .nav-inner,
#next .nav-inner {
    position: fixed;
}



#bottom .nav-inner {
    opacity: 0.95;
    position: absolute;
    height: 0.2rem;
    margin-bottom: ◊|paragraph-space|;
    margin-left: ◊|body-left-margin|;
    margin-right: ◊|default-margin|;
    width: ◊|content-width|;
}





#bottom a.xref {
  display: inline-block;
  text-align: center;
  left:60rem;
  box-sizing: content-box; ◊; must override border-box setting here
  padding: 0.4rem;
  padding-bottom: 2.5rem;
  height: 2rem;
  width: 2rem;
  background: none;
  color: black;
  line-height: 1.1;
  font-size: 200%;
  opacity: 0.1; ◊; this works better than straight gray, which Webkit renders heavy
  transition: opacity 0.4s;
}



#bottom a.xref:hover {
    background: #ffff;
    color: #FF001F;
    opacity: 0.6;
    border-radius: 8px; ◊; Adds round edges.
    transition: background 0.2s;
  }




div.pdf-thumbnail {
  font-family: "Source Sans Pro";
  display: inline-block;
  width: 40%;
}

div.pdf-thumbnail + div.pdf-thumbnail  {
  margin-left: 10%;
}

◊; FADE : aligns single-pdf in the center.
div.pdf-thumbnail.centurion {
  align-content: center;
  align-items: center;
  margin-left: 30%;
}
◊; FIN : aligns single-pdf in the center.


.pdf-thumbnail a {
  display: inline-block;
  background: inherit;
  margin-top: 1rem;
  margin-bottom: 1rem;
}

◊; FADE : alternative TOC.
.mcqueen {
  font-family: 'Source Sans Pro', sans-serif;
  margin-bottom: 10px;
  color: #FF001F;
}

.mcking {
  font-family: 'Source Sans Pro', sans-serif;
}

.mcduke {
  font-family: 'Source Sans Pro', sans-serif;
  ◊(make-css-small-caps)
  padding-bottom: 2rem;
  margin-bottom: 2rem;
}

.mcqueen:hover {
  background-color: #FF001F;
  color: #fff;
}
◊; FIN : alternative TOC.


◊; move the hover style onto the thumbnail so it's snug
.pdf-thumbnail a, .pdf-thumbnail a:hover {
  border: none;
}

.pdf-thumbnail img {
  border: 2px solid #ddd;
}

.pdf-thumbnail img:hover {
  border: 2px solid black;
}


.nav-inner, .nav-inner:hover {
  color: ◊|anchor-hover-color|;
}

.nav-inner:hover {
  opacity: 1;
}

.nav-outer, .nav-inner {
  margin: 0;
  padding: 0;
}

◊; flex layout for side nav (to center glyphs vertically)
.nav-inner {
  display:flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: space-between;
  align-content: center;
  align-items: center;
  opacity: 0;
}

.nav-flex {
  width: 100%;
  text-align: center;
  font-size: 3.5rem;
  font-weight: bolder;
}

◊; side nav hover
.nav-inner, .nav-inner:hover {
  transition: opacity 0.2s;
}

#top .nav-inner {
left: 0;
width: ◊|big-nav-width|;
top: 0;
height: ◊|big-nav-width|;
}

#up .nav-inner {
left: ◊|big-nav-width|;
right: 0;
top: 0;
height: 3rem; ◊; make this smaller so it doesn't overlap content
}

#prev .nav-inner {
left: 0;
top: 0;
bottom: 0;
width: ◊|nav-width|;
}

#next .nav-inner {
right: 0;
top: 0;
bottom: 0;
width: ◊|nav-width|;
}


.nav-inner #toc {

}

a.pdf, a.pdf:hover {
  border: none;
  background: none;
}

a.pdf img:hover {
  background: #f6f6f6;
}

◊; FADE : Everything Related to Code Blocks.

◊(define default-horiz-block-metrics (format "
    margin-left: ~arem;
    width: ~arem;
    margin-right: ~arem;" default-margin-left default-width default-margin-right))


.highlight {
    border-left: 1px dashed #ebebeb;
    background: #F2F7FC;
    margin-bottom: 1.2rem;
}

.highlight .linenos {
    display: none;
}


◊; FADE : Styles code blocks.
.highlight pre {
    text-align: left;
    font-family: Source Code Pro;
    font-size: 0.75rem;
    margin-right: -2rem;
    white-space: pre-wrap;
}
◊; FADE : Styles code blocks.

◊; syntax colors adapted from Racket documentation
◊define[paren-color]{#888}
◊define[comment-color]{#c2741f}
◊define[keyword-color]{#07a}
◊define[name-color]{#444}
◊define[literal-color]{#275}

◊; FADE : styling classes for Pygments.
.p { color: ◊|paren-color|;}
.c { color: #998; font-style: italic; } /* Comment */
.err { color: red; font-style: italic; } /* Error */
.o { color: #000; } /* Operator */
.cm { color: ◊|comment-color|; font-style: italic } /* Comment.Multiline */
.cp { color: ◊|comment-color|; font-style: italic } /* Comment.Preproc */
.c1 { color: ◊|comment-color|; font-style: italic } /* Comment.Single */
.cs { color: ◊|comment-color|; font-style: italic } /* Comment.Special */
.gd { color: #000; background-color: #ffdddd } /* Generic.Deleted */
.ge { color: #000; font-style: italic } /* Generic.Emph */
.gr { color: #a00; } /* Generic.Error */
.gh { color: #999; } /* Generic.Heading */
.gi { color: #000; background-color: #ddffdd } /* Generic.Inserted */
.go { color: #888; } /* Generic.Output */
.gp { color: #555; } /* Generic.Prompt */
.gs { } /* Generic.Strong */
.gu { color: #aaa; } /* Generic.Subheading */
.gt { color: #a00; } /* Generic.Traceback */
.k { color: ◊|keyword-color|; } /* Keyword */
.kc { color: ◊|keyword-color|; } /* Keyword.Constant */
.kd { color: ◊|keyword-color|; } /* Keyword.Declaration */
.kn { color: ◊|keyword-color|; } /* Keyword.Namespace */
.kp { color: ◊|keyword-color|; } /* Keyword.Pseudo */
.kr { color: ◊|keyword-color|; } /* Keyword.Reserved */
.kt { color: ◊|keyword-color|; } /* Keyword.Type */
.na { color: ◊|name-color|; } /* Name.Attribute */
.nb { color: ◊|keyword-color|; } /* Name.Builtin */
.nc { color: ◊|name-color|; } /* Name.Class */
.no { color: ◊|name-color|; } /* Name.Constant */
.nd { color: ◊|name-color|; } /* Name.Decorator */
.ni { color: ◊|name-color|; } /* Name.Entity */
.ne { color: ◊|name-color|; } /* Name.Exception */
.nf { color: ◊|name-color|; } /* Name.Function */
.nl { color: ◊|name-color|; } /* Name.Label */
.nn { color: ◊|name-color|; } /* Name.Namespace */
.nt { color: ◊|name-color|; } /* Name.Tag */
.nv { color: ◊|name-color|; } /* Name.Variable */
.ow { color: ◊|name-color|; } /* Operator.Word */
.w { color: #bbb; } /* Text.Whitespace */
.m { color: ◊|literal-color|; } /* Literal.Number */
.mf { color: ◊|literal-color|; } /* Literal.Number.Float */
.mh { color: ◊|literal-color|; } /* Literal.Number.Hex */
.mi { color: ◊|literal-color|; } /* Literal.Number.Integer */
.mo { color: ◊|literal-color|; } /* Literal.Number.Oct */
.s { color: ◊|literal-color|;} /* Literal.String */
.sb { color: ◊|literal-color|; } /* Literal.String.Backtick */
.sc { color: ◊|literal-color|; } /* Literal.String.Char */
.sd { color: ◊|literal-color|; } /* Literal.String.Doc */
.s2 { color: ◊|literal-color|; } /* Literal.String.Double */
.se { color: ◊|literal-color|; } /* Literal.String.Escape */
.sh { color: ◊|literal-color|; } /* Literal.String.Heredoc */
.si { color: ◊|literal-color|; } /* Literal.String.Interpol */
.sx { color: ◊|literal-color|; } /* Literal.String.Other */
.sr { color: ◊|literal-color|; } /* Literal.String.Regex */
.s1 { color: ◊|literal-color|; } /* Literal.String.Single */
.ss { color: ◊|literal-color|; } /* Literal.String.Symbol */
.bp { color: #999; } /* Name.Builtin.Pseudo */
.vc { color: #077; } /* Name.Variable.Class */
.vg { color: #077; } /* Name.Variable.Global */
.vi { color: #077; } /* Name.Variable.Instance */
.il { color: #099; } /* Literal.Number.Integer.Long */
◊; FIN: styling classes for Pygments.
◊; FIN : Everything Related to Code Blocks.
