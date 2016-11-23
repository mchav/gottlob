# gottlob
A build tool for the Frege programming language.

## Usage

`got [command]`

## Commands

`new [project]` - makes a new project in the current directory
`-help`         - displays a help menu
`-v`            - displays the version
`compile`       - compiles the project (files in the src directory)
`run [class]`   - runs the given class. If none is given, attempts to run main.

# Some design choices

All required jars should be placed in the `lib` folder. Download capability will be available in the future.

Haven't decided if the tool should mimick cabal files, work with existing build tools like maven or gradle, or have a custom format.

This is currently a series of small functions that I use to wrap the compile and run commands. I'm still looking into a smarter implementation.

Ships with a version of the Frege compiler in `lib`.

Once I interface log4j with frege I'll use that for logging. Print statements will suffice for now.
