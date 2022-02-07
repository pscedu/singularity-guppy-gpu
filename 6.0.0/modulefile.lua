--
-- guppy-gpu 6.0.0 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: Guppy is a data processing toolkit that contains the Oxford Nanopore Technologies’ basecalling algorithms."
-- "Keywords: singularity bioinformatics"

whatis("Name: guppy-gpu")
whatis("Version: 6.0.0")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: Guppy is a data processing toolkit that contains the Oxford Nanopore Technologies’ basecalling algorithms.")

help([[
Guppy is a data processing toolkit that contains the Oxford Nanopore Technologies’ basecalling algorithms.

To load the module type

> module load guppy-gpu/6.0.0

To unload the module type

> module unload guppy-gpu/6.0.0

Tools included in this module are

 * guppy_aligner
 * guppy_basecaller
 * guppy_barcoder
 * guppy_basecaller_duplex
 * guppy_basecall_client
 * guppy_basecaller_supervisor
 * guppy_basecall_server
]])

local package = "guppy"
local version = "6.0.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
