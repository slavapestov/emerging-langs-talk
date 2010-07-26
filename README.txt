To run the demos, download a Factor binary from http://factorcode.org.
Make sure to get the development release, not the stable release.

Run Factor, and type

"/Users/slava/emerginglangs/" add-vocab-root
"emerging-langs-talk" run

Of course replacing the path with the path to the directory containing
README.txt.

The prices.txt example requires that the current working directory is
set appropriately, so you can do

USE: io.directories
"/Users/slava/emerginglangs/" set-current-directory

To run the gpu.demos.raytrace demo at the end, right-click on the link
and pick 'Run' from the menu, or just type this in the listener window:

"gpu.demos.raytrace" run
