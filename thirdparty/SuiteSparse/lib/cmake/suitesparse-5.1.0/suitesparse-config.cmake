# Compute locations from <prefix>/@{LIBRARY_DIR@/cmake/suitesparse-<v>/<self>.cmake
get_filename_component(_SuiteSparse_SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_SuiteSparse_PREFIX "${_SuiteSparse_SELF_DIR}" PATH)
get_filename_component(_SuiteSparse_PREFIX "${_SuiteSparse_PREFIX}" PATH)
get_filename_component(_SuiteSparse_PREFIX "${_SuiteSparse_PREFIX}" PATH)

# Load the LAPACK package with which we were built.
find_package(LAPACK CONFIG)

# Load targets from the install tree.
include(${_SuiteSparse_SELF_DIR}/SuiteSparse-targets.cmake)

# Report SuiteSparse header search locations.
set(SuiteSparse_INCLUDE_DIRS ${_SuiteSparse_PREFIX}/include)

# Report SuiteSparse libraries.
set(SuiteSparse_LIBRARIES
	SuiteSparse::suitesparseconfig
	SuiteSparse::amd
	SuiteSparse::btf
	SuiteSparse::camd
	SuiteSparse::ccolamd
	SuiteSparse::colamd
	SuiteSparse::cholmod
	SuiteSparse::cxsparse
	SuiteSparse::klu
	SuiteSparse::ldl
	SuiteSparse::umfpack
	SuiteSparse::spqr
	
)

unset(_SuiteSparse_PREFIX)
unset(_SuiteSparse_SELF_DIR)
