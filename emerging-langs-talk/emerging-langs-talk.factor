! Copyright (C) 2010 Slava Pestov.
! See http://factorcode.org/license.txt for BSD license.
USING: slides help.markup math math.private kernel sequences
slots.private see help ;
IN: emerging-langs-talk

CONSTANT: emerging-langs-slides
{
    { $slide "Code is data"
        "A stack program is a list of literals and words"
        "Literals are pushed on the stack"
        "Words get executed"
        "Anonymous function == list literal"
        { "Use " { $link see } " to look at definitions" }
        { "Easy to get " { $link help } }
    }
    { $slide "Removing definitions demo"
        "In most dynamic languages, loading a source file == copy and paste into REPL"
        "This is wrong!"
        "Same thing in two languages: load a file, remove a method, reload file, ..."
        { "Common Lisp: " { $snippet "frobnicate.lisp" } }
        { "Factor: " { $vocab-link "acme.frobnicate" } }
    }
    { $slide "Compilation errors demo"
        { "First vocabulary defines a word: " $nl { $vocab-link "acme.widgets.supply" } }
        { "Second vocabulary uses above word: " $nl { $vocab-link "acme.widgets.factory" } }
        { "If I add or a parameter, the compiler tells me to update code" }
    }
    { $slide "Help system demo"
        "Let's go ahead and document stuff"
    }
    { $slide "Inlining and recompilation demo"
        { "First vocabulary with a couple of constants: " { $vocab-link "planet.earth.constants" } }
        { "Second vocabulary uses these constants: " { $vocab-link "planet.earth.physics" } }
        { "Constant folding across source file boundaries!" }
    }
    { $slide "Tuple reshaping demo"
        { "Vocabulary defines a data type: " { $vocab-link "planet.info" } }
        {
            { "Let's make an instance of this type" }
            { $code
                "planet new"
                "    earth-mass >>mass"
                "    earth-radius >>radius"
                "    24 >>day-length"
                "    365 >>year-length"
            }
        }
        { "Adding, re-arranging, removing slots updates instances" }
    }
    { $slide "Programming is hard"
        "Let's play tetris"
        { $vocab-link "tetris" }
        { "Edit " { $vocab-link "tetris.tetromino" } " while its running" }
    }
}

: emerging-langs-talk ( -- )
    emerging-langs-slides slides-window ;

MAIN: emerging-langs-talk
