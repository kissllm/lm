# References
# clang/cmake/caches/README.txt
# clang/cmake/caches/DistributionExample.cmake
# clang/cmake/caches/MultiDistributionExample.cmake
# Enable LLVM projects and runtimes
# set ( LLVM_ENABLE_PROJECTS llvm;clang;lld;clang-tools-extra CACHE STRING "" )
# set ( LLVM_ENABLE_PROJECTS llvm;clang;lld;lldb;clang-tools-extra;polly CACHE STRING "" )
# set ( LLVM_ENABLE_PROJECTS llvm;clang;lld;clang-tools-extra;polly;bolt CACHE STRING "" )
set ( LLVM_ENABLE_PROJECTS llvm;clang;lld;clang-tools-extra;lldb;polly;bolt;mlir CACHE STRING "" )
set ( LLVM_ENABLE_RUNTIMES compiler-rt;libunwind;libcxxabi;libcxx CACHE STRING "" )
# set ( LLVM_ENABLE_RUNTIMES "compiler-rt;libunwind;libcxxabi;libcxx;pstl;openmp" CACHE STRING "" )


# Set the targets we need
set ( LLVM_TARGETS_TO_BUILD ARM;AArch64;PowerPC;RISCV;X86 CACHE STRING "" )

# Optimize the stage1 compiler, but don't LTO it because that wastes time.
# Setup vendor-specific settings.
set ( PACKAGE_VENDOR           kiss        CACHE STRING "" )
set ( CMAKE_BUILD_TYPE         Release     CACHE STRING "" )
set ( CLANG_DEFAULT_UNWINDLIB  libunwind   CACHE STRING "" )
set ( CLANG_DEFAULT_CXX_STDLIB libc++      CACHE STRING "" )
set ( CLANG_DEFAULT_LINKER     ld.lld      CACHE STRING "" )
set ( CLANG_DEFAULT_RTLIB      compiler-rt CACHE STRING "" )
set ( LIBCXX_CXX_ABI           libcxxabi   CACHE STRING "" )
set ( LLDB_ENABLE_PYTHON       0           CACHE INTERNAL "" )
set ( LLDB_ENABLE_LIBEDIT      0           CACHE INTERNAL "" )
set ( LLDB_ENABLE_CURSES       0           CACHE INTERNAL "" )
set ( LLVM_ENABLE_TERMINFO     1           CACHE INTERNAL "" )
set ( LLVM_CCACHE_BUILD                      ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_BUILTINS             ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_CRT                  ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_LIBFUZZER            ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_ORC                  ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_PROFILE              OFF CACHE BOOL "" )
set ( COMPILER_RT_BUILD_SANITIZERS           ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_XRAY                 OFF CACHE BOOL "" )
set ( COMPILER_RT_BUILD_GWP_ASAN             ON  CACHE BOOL "" )
set ( CXX_SUPPORTS_CUSTOM_LINKER             ON  CACHE BOOL "" )
set ( LIBCXXABI_USE_COMPILER_RT              ON  CACHE BOOL "" )
set ( LIBCXXABI_USE_LLVM_UNWINDER            ON  CACHE BOOL "" )
set ( LIBCXX_INCLUDE_TESTS                   ON  CACHE BOOL "" )
set ( LIBCXX_HAS_MUSL_LIBC                   ON  CACHE BOOL "" )
set ( LIBCXX_INCLUDE_BENCHMARKS              OFF CACHE BOOL "" )
set ( LIBCXX_USE_COMPILER_RT                 ON  CACHE BOOL "" )
set ( LIBUNWIND_ENABLE_CROSS_UNWINDING       ON  CACHE BOOL "" )
set ( LIBUNWIND_SUPPORTS_FNO_EXCEPTIONS_FLAG ON  CACHE BOOL "" )
set ( LIBUNWIND_SUPPORTS_FNO_RTTI_FLAG       ON  CACHE BOOL "" )
set ( LIBUNWIND_SUPPORTS_NODEFAULTLIBS_FLAG  ON  CACHE BOOL "" )
set ( LIBUNWIND_USE_COMPILER_RT              ON  CACHE BOOL "" )
set ( LLVM_BUILD_BENCHMARKS                  OFF CACHE BOOL "" )
set ( LLVM_BUILD_COMPILER_RT                 ON  CACHE BOOL "" )
set ( LLVM_BUILD_DOCS                        OFF CACHE BOOL "" )
set ( LLVM_BUILD_EXAMPLES                    OFF CACHE BOOL "" )
set ( LLVM_BUILD_LLVM_DYLIB                  OFF CACHE BOOL "" )
set ( LLVM_BUILD_TESTS                       OFF CACHE BOOL "" )
set ( PPC_LINUX_DEFAULT_IEEELONGDOUBLE       ON  CACHE BOOL "" )
set ( LLVM_ENABLE_ZLIB                       ON  CACHE BOOL "" )
set ( BOOTSTRAP_LLVM_ENABLE_LLD              ON  CACHE BOOL "" )
set ( BOOTSTRAP_LLVM_ENABLE_LTO              ON  CACHE BOOL "" )

set ( CMAKE_C_USE_RESPONSE_FILE_FOR_OBJECTS   1   CACHE INTERNAL "" )
set ( CMAKE_CXX_USE_RESPONSE_FILE_FOR_OBJECTS 1   CACHE INTERNAL "" )

set ( CMAKE_C_RESPONSE_FILE_LINK_FLAG         "@" CACHE INTERNAL "" )
set ( CMAKE_CXX_RESPONSE_FILE_LINK_FLAG       "@" CACHE INTERNAL "" )
set ( CMAKE_NINJA_FORCE_RESPONSE_FILE         1   CACHE INTERNAL "" )

set ( LLVM_BUILTIN_TARGETS
	default
	i686-linux-musl
	x86_64-linux-musl
	powerpc64-linux-musl
	powerpc64le-linux-musl
	powerpc-linux-musl
	powerpcle-linux-musl
	riscv32-linux-musl
	riscv64-linux-musl
	armv7-linux-musleabihf
	armv6m-linux-musleabi
	aarch64-linux-musl
	aarch64_be-linux-musl
	CACHE STRING "" )

# Expose stage2 targets through the stage1 build configuration.
set ( CLANG_BOOTSTRAP_TARGETS
	check-all
	check-llvm
	check-clang
	check-lld
	check-polly
	check-unwind
	check-llvm-tools-llvm-config
	llvm-config
	llvm-tblgen
	clang-tblgen
	test-suite
	test-depends
	llvm-test-depends
	clang-test-depends
	lldb-test-depends
	lld-test-depends
	toolchain-distribution
	LTO
	Polly
	bolt
	lld
	lldb
	llvm-lto
	llvm-lto2
	distribution
	install-distribution
	install-toolchain-distribution
	install-toolchain-distribution-stripped
	install-toolchain-distribution-toolchain
	check-lldb
	debugger-distribution
	install-debugger-distribution
	install-debugger-distribution-stripped
	install-debugger-distribution-toolchain
	clang CACHE STRING "" )

# pstl
# PGO.cmake
# stage2
# stage2-distribution
# stage2-install-distribution
# stage2-install-distribution-toolchain
# stage2-check-all
# stage2-check-llvm
# stage2-check-clang
# stage2-test-suite

get_cmake_property ( variableNames VARIABLES )
foreach ( variableName ${variableNames} )
	if ( variableName MATCHES "^STAGE2_" )
		string ( REPLACE "STAGE2_" "" new_name ${variableName} )
		string ( REPLACE ";" "|" value "${${variableName}}" )
		list ( APPEND EXTRA_ARGS "-D${new_name}=${value}" )
	endif ( )
endforeach ( )

# Setup the bootstrap build.
set ( CLANG_ENABLE_BOOTSTRAP ON CACHE BOOL "" )

set ( CLANG_BOOTSTRAP_EXTRA_DEPS
	builtins
	runtimes
	CACHE STRING "" )

if ( STAGE2_CACHE_FILE )
	set ( CLANG_BOOTSTRAP_CMAKE_ARGS
		-C ${STAGE2_CACHE_FILE}
		CACHE STRING "" )
else ( )
	set ( CLANG_BOOTSTRAP_CMAKE_ARGS
		${EXTRA_ARGS}
		-C ${CMAKE_CURRENT_LIST_DIR}/distribution-stage2.cmake
		CACHE STRING "" )
endif ( )







