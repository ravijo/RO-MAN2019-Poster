#!/bin/bash
# compile.tex to produce poster.pdf and
# remove temporary files generated during compilation
# Usage: sh compile.sh
# Author: Ravi Joshi
# Date: 28 Oct 2019
# -------------------------------------------------

# declare all temporary files
temp_file_extensions="aux log"

# function
compile_tex()
{
    file_name=$1

    echo "Running pdflatex. Please wait..."
    pdflatex "${file_name}.tex"

    echo "Removing temporary files. Please wait..."
    for temp_file_extension in $temp_file_extensions
    do
        rm  "${file_name}.${temp_file_extension}"
    done

    echo "Finished."
}

compile_tex poster

