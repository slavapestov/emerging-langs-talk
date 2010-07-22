! Copyright (C) 2010 Slava Pestov.
! See http://factorcode.org/license.txt for BSD license.
USING: slides help.markup math math.private kernel sequences
slots.private see help ;
IN: emerging-langs-talk

CONSTANT: emerging-langs-slides
{
    { $slide "Factor"
        "Dynamic, object-oriented, stack-based language"
        "Influenced by Forth, Lisp, C++, Smalltalk"
        "In development since 2003"
    }
    { $slide "Example"
        { $code
            "USING: io.encodings.utf8 math.parser"
            "splitting ;"
            ""
            ""
            "\"prices.txt\" utf8 file-lines"
            "[ \" \" split ] map"
            "[ last string>number ] map"
            "[ 10 > ] filter"
            "sum ."
        }
    }
    { $slide "Code is data"
        {
            "A stack program is a list of literals and words:"
            { $list
                "Literals are pushed on the stack"
                "Words get executed"
            }
        }
        "Anonymous function == list literal"
        { "Use " { $link see } " to look at definitions" }
        { "Integrated " { $link help } }
    }
    { $slide "Interactive development"
        "Project's scope is too broad for 20 minutes"
        { "Today's feature:" $nl "Making code changes in a running application" }
    }
    { $slide "Removing definitions"
        "In most dynamic languages, loading a source file == copy and paste into REPL"
        "This is wrong!"
        "Removing definitions from a source file and reloading it should remove them from the image"
        { $code "USE: acme.frobnicate" }
    }
    { $slide "Compilation errors demo"
        { "First vocabulary defines a word:" { $code "USE: acme.widgets.supply" } }
        { "Second vocabulary uses above word:" { $code "USE: acme.widgets.factory" } }
        { "If I add or a parameter, the compiler tells me to update code" }
    }
    { $slide "Help system demo"
        "Let's go ahead and document stuff"
        { $code
            "USE: tools.scaffold"
            "\"acme.widgets.supply\" scaffold-help"
        }
    }
    { $slide "Inlining and recompilation demo"
        { "First vocabulary with a couple of constants:" { $code "USE: planet.earth.constants" } }
        { "Second vocabulary uses these constants:" { $code "USE: planet.earth.physics" } }
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
        "Let's play Tetris"
        { $vocab-link "tetris" }
        { "Edit " { $vocab-link "tetris.tetromino" } " while its running" }
    }
    { $slide "The rest"
        "Compile-time metaprogramming"
        "Tons of libraries (web, graphics, ...)"
        "Low-level features (C FFI, packed arrays, structs, ...)"
        "Excellent support for Unicode and text encodings"
        "Fast co-routines with non-blocking I/O"
        "Optimizing compiler generates machine code"
        "Compacting generational GC"
    }
    { $slide "Questions?"
        { $url "http://factorcode.org" }
    }
}

: emerging-langs-talk ( -- )
    emerging-langs-slides slides-window ;

MAIN: emerging-langs-talk
