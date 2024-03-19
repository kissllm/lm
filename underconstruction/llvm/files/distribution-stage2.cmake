set ( CMAKE_SYSTEM_NAME Linux CACHE STRING "" )

# set ( LLVM_ENABLE_PROJECTS "llvm;clang;lld;clang-tools-extra" CACHE STRING "" )
# set ( LLVM_ENABLE_PROJECTS "llvm;clang;lld;lldb;polly;clang-tools-extra" CACHE STRING "" )
# set ( LLVM_ENABLE_PROJECTS llvm;clang;lld;clang-tools-extra;polly;bolt CACHE STRING "" )
set ( LLVM_ENABLE_PROJECTS llvm;clang;lld;clang-tools-extra;lldb;polly;bolt;mlir CACHE STRING "" )
set ( LLVM_ENABLE_RUNTIMES compiler-rt;libunwind;libcxxabi;libcxx;pstl;openmp CACHE STRING "" )
# AllSupportedArchDefs.cmake
set ( LLVM_TARGETS_TO_BUILD ARM;AArch64;AMDGPU;PowerPC;RISCV;X86 CACHE STRING "" )

set ( LLVM_CCACHE_BUILD                       ON          CACHE BOOL "" )
set ( CMAKE_BUILD_TYPE                        Release     CACHE STRING "" )
set ( CLANG_DEFAULT_CXX_STDLIB                libc++      CACHE STRING "" )
set ( CLANG_DEFAULT_LINKER                    ld.lld      CACHE STRING "" )
set ( CLANG_DEFAULT_RTLIB                     compiler-rt CACHE STRING "" )
set ( CLANG_DEFAULT_UNWINDLIB                 libunwind   CACHE STRING "" )
set ( LIBCXX_CXX_ABI                          libcxxabi   CACHE STRING "" )
set ( LLDB_ENABLE_CURSES                      0           CACHE INTERNAL "" )
set ( LLDB_ENABLE_LIBEDIT                     0           CACHE INTERNAL "" )
set ( LLDB_ENABLE_PYTHON                      0           CACHE INTERNAL "" )
set ( LLVM_ENABLE_TERMINFO                    1           CACHE INTERNAL "" )
set ( COMPILER_RT_BUILD_BUILTINS              ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_CRT                   ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_GWP_ASAN              ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_LIBFUZZER             OFF CACHE BOOL "" )
set ( COMPILER_RT_BUILD_ORC                   ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_PROFILE               ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_SANITIZERS            ON  CACHE BOOL "" )
set ( COMPILER_RT_BUILD_XRAY                  OFF CACHE BOOL "" )
# set ( COMPILER_RT_DEFAULT_TARGET_ONLY ON CACHE BOOL "" )
set ( CXX_SUPPORTS_CUSTOM_LINKER              ON  CACHE BOOL "" )
set ( LIBCXXABI_USE_COMPILER_RT               ON  CACHE BOOL "" )
set ( LIBCXXABI_USE_LLVM_UNWINDER             ON  CACHE BOOL "" )
set ( LIBCXX_HAS_MUSL_LIBC                    ON  CACHE BOOL "" )
set ( LIBCXX_INCLUDE_BENCHMARKS               OFF CACHE BOOL "" )
set ( LIBCXX_INCLUDE_TESTS                    ON  CACHE BOOL "" )
set ( LIBCXX_USE_COMPILER_RT                  ON  CACHE BOOL "" )
set ( LIBUNWIND_ENABLE_CROSS_UNWINDING        ON  CACHE BOOL "" )
set ( LIBUNWIND_SUPPORTS_FNO_EXCEPTIONS_FLAG  ON  CACHE BOOL "" )
set ( LIBUNWIND_SUPPORTS_FNO_RTTI_FLAG        ON  CACHE BOOL "" )
set ( LIBUNWIND_SUPPORTS_NODEFAULTLIBS_FLAG   ON  CACHE BOOL "" )
set ( LIBUNWIND_USE_COMPILER_RT               ON  CACHE BOOL "" )
set ( LLVM_BUILD_BENCHMARKS                   OFF CACHE BOOL "" )
set ( LLVM_BUILD_COMPILER_RT                  ON  CACHE BOOL "" )
set ( LLVM_BUILD_DOCS                         OFF CACHE BOOL "" )
set ( LLVM_BUILD_EXAMPLES                     OFF CACHE BOOL "" )
set ( LLVM_BUILD_TESTS                        OFF CACHE BOOL "" )
set ( LLVM_ENABLE_LIBCXX                      ON  CACHE BOOL "" )
set ( LLVM_ENABLE_LLD                         ON  CACHE BOOL "" )
set ( LLVM_ENABLE_RTTI                        ON  CACHE BOOL "" )
# Has not been completely implemented ?
set ( LLVM_ENABLE_PER_TARGET_RUNTIME_DIR         ON CACHE BOOL "")
set ( LLVM_ENABLE_PER_TARGET_RUNTIME_DIR_default ON CACHE BOOL "")
# set ( LLVM_ENABLE_PER_TARGET_RUNTIME_DIR         OFF CACHE BOOL "")
set ( PPC_LINUX_DEFAULT_IEEELONGDOUBLE        ON  CACHE BOOL "" )
set ( OPENMP_ENABLE_LIBOMPTARGET              ON  CACHE BOOL "" )
# set ( OPENMP_ENABLE_LIBOMPTARGET             OFF CACHE BOOL "" )
set ( OPENMP_ENABLE_LIBOMPTARGET_PROFILING    OFF CACHE BOOL "" )
set ( OPENMP_ENABLE_OMPT_TOOLS                OFF CACHE BOOL "" )
set ( LLVM_LINK_LLVM_DYLIB                    ON  CACHE BOOL "" )
set ( LLVM_ENABLE_ZLIB                        ON  CACHE BOOL "" )
set ( LLVM_ENABLE_LIBXML2                     OFF CACHE BOOL "" )
set ( LLVM_ENABLE_ZSTD                        OFF CACHE BOOL "" )

set ( LLVM_HAS_ATOMICS                        ON  CACHE BOOL "" )
set ( _LIBCPP_ATOMIC_ONLY_USE_BUILTINS        ON  CACHE BOOL "" )
set ( COMPILER_RT_EXCLUDE_ATOMIC_BUILTIN      ON  CACHE BOOL "" )
set ( HAVE_CXX_ATOMICS_WITH_LIB               OFF CACHE BOOL "" )
set ( COMPILER_RT_BUILD_STANDALONE_LIBATOMIC  OFF CACHE BOOL "" )
set ( LIBCXX_HAS_ATOMIC_LIB                   0   CACHE INTERNAL "" )
set ( HAVE_CXX_ATOMICS_WITHOUT_LIB            1   CACHE INTERNAL "" )
set ( HAVE_CXX_ATOMICS64_WITHOUT_LIB          1   CACHE INTERNAL "" )
set ( LIBCXX_HAVE_CXX_ATOMICS_WITHOUT_LIB     1   CACHE INTERNAL "" )
set ( LIBCXX_HAVE_CXX_ATOMICS64_WITHOUT_LIB   1   CACHE INTERNAL "" )

set ( CMAKE_C_USE_RESPONSE_FILE_FOR_OBJECTS   1   CACHE INTERNAL "" )
set ( CMAKE_CXX_USE_RESPONSE_FILE_FOR_OBJECTS 1   CACHE INTERNAL "" )

set ( CMAKE_C_RESPONSE_FILE_LINK_FLAG         "@" CACHE INTERNAL "" )
set ( CMAKE_CXX_RESPONSE_FILE_LINK_FLAG       "@" CACHE INTERNAL "" )
set ( CMAKE_NINJA_FORCE_RESPONSE_FILE         1   CACHE INTERNAL "" )

set ( LLVM_BUILTIN_TARGETS
	default
	powerpc64-linux-musl
	powerpc-linux-musl
	powerpc64le-linux-musl
	powerpcle-linux-musl
	armv7-linux-musleabihf
	armv6m-linux-musleabi
	aarch64-linux-musl
	aarch64_be-linux-musl
	riscv64-linux-musl
	riscv32-linux-musl
	i386-linux-musl
	x86_64-linux-musl
	CACHE STRING "" )

# setup toolchain
set ( LLVM_INSTALL_TOOLCHAIN_ONLY OFF CACHE BOOL "")
set ( LLVM_DYLIB_COMPONENTS       all CACHE STRING "" )

set ( LLVM_TOOLCHAIN_TOOLS
	dsymutil
	llc
	lli
	llvm-addr2line
	llvm-ar
	llvm-as
	llvm-config
	llvm-cov
	llvm-cxxfilt
	llvm-cxxmap
	llvm-diff
	llvm-dis
	llvm-dwarfdump
	llvm-extract
	llvm-lib
	llvm-link
	llvm-lipo
	llvm-lto
	llvm-lto2
	llvm-mca
	llvm-nm
	llvm-objcopy
	llvm-objdump
	llvm-otool
	llvm-profdata
	llvm-ranlib
	llvm-readobj
	llvm-size
	llvm-stress
	llvm-strings
	llvm-strip
	llvm-symbolizer
	llvm-tblgen
	llvm-xray
	opt
	opt-viewer
	CACHE STRING "" )

# Specified distribution component 'clangd' doesn't have an install target
set ( LLVM_DISTRIBUTION_COMPONENTS
	builtins
	cmake-exports
	clang-cmake-exports
	clang
	clangd
	clang-cpp
	clang-format
	clang-headers
	clang-libraries
	clang-resource-headers
	libclang
	libclang-headers
	lld
	llvm-libraries
	llvm-headers
	LTO
	Polly
	bolt
	runtimes
  clang-apply-replacements
  clang-doc
  clang-include-fixer
  clang-refactor
  clang-scan-deps
  clang-tidy
  find-all-symbols
  lldb
  liblldb
  lldb-server
  lldb-argdumper
	${LLVM_TOOLCHAIN_TOOLS}
	CACHE STRING "" )

# pstl
# set(LLVM_DISTRIBUTIONS "TOOLCHAIN;DEBUGGER" CACHE STRING "")







