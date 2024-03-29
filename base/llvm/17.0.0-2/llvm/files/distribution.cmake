#Enable LLVM projects and runtimes
# set(LLVM_ENABLE_PROJECTS "llvm;clang;lld;lldb;polly;clang-tools-extra" CACHE STRING "")
set(LLVM_ENABLE_PROJECTS "llvm;clang;lld;polly;clang-tools-extra" CACHE STRING "")
# set(LLVM_ENABLE_PROJECTS "llvm;clang;lld;clang-tools-extra" CACHE STRING "")
set(LLVM_ENABLE_RUNTIMES "compiler-rt;libcxx;libcxxabi;libunwind;pstl;openmp" CACHE STRING "")
# set(LLVM_ENABLE_RUNTIMES "compiler-rt;libcxx;libcxxabi;libunwind" CACHE STRING "")

set(LLVM_CCACHE_BUILD "OFF" CACHE STRING "")

# Set the targets we need
set(LLVM_TARGETS_TO_BUILD ARM;AArch64;PowerPC;RISCV;X86 CACHE STRING "")

# Optimize the stage1 compiler, but don't LTO it because that wastes time.
set(CMAKE_BUILD_TYPE Release CACHE STRING "")

# Setup vendor-specific settings.
set(PACKAGE_VENDOR glasnost CACHE STRING "")
set(CLANG_DEFAULT_UNWINDLIB "libunwind" CACHE STRING "")
set(CLANG_DEFAULT_CXX_STDLIB "libc++" CACHE STRING "")
set(CLANG_DEFAULT_LINKER "ld.lld" CACHE STRING "")
set(CLANG_DEFAULT_RTLIB "compiler-rt" CACHE STRING "")
set(LIBUNWIND_SUPPORTS_NODEFAULTLIBS_FLAG "ON" CACHE STRING "")
set(LIBUNWIND_ENABLE_CROSS_UNWINDING "ON" CACHE STRING "")
set(LIBUNWIND_SUPPORTS_FNO_EXCEPTIONS_FLAG "ON" CACHE STRING "")
set(LIBUNWIND_SUPPORTS_FNO_RTTI_FLAG "ON" CACHE STRING "")
set(LIBUNWIND_USE_COMPILER_RT "ON" CACHE STRING "")
set(LLDB_ENABLE_PYTHON 0 CACHE STRING "")
set(LLDB_ENABLE_LIBEDIT 0 CACHE STRING "")
set(LLDB_ENABLE_CURSES 0 CACHE STRING "")
set(LLVM_ENABLE_TERMINFO 0 CACHE STRING "")
set(COMPILER_RT_BUILD_BUILTINS "ON" CACHE STRING "")
set(LLVM_BUILTIN_TARGETS "default;aarch64-linux-musl;powerpc64-linux-musl;powerpc64le-linux-musl;powerpc-linux-musl;powerpcle-linux-musl;i686-linux-musl;x86_64-linux-musl;riscv32-linux-musl;riscv64-linux-musl;armv7-linux-musleabihf;aarch64_be-linux-musl;armv6m-linux-musleabi" CACHE STRING "")
# set(LLVM_BUILTIN_TARGETS "default;aarch64-linux-musl;powerpc64-linux-musl;powerpc64le-linux-musl;powerpc-linux-musl;powerpcle-linux-musl;i686-linux-musl;x86_64-linux-musl;riscv32-linux-musl;riscv64-linux-musl;armv7-linux-musleabihf;aarch64_be-linux-musl" CACHE STRING "")
set(COMPILER_RT_BUILD_CRT "ON" CACHE STRING "")
set(COMPILER_RT_BUILD_LIBFUZZER "ON" CACHE STRING "")
set(COMPILER_RT_BUILD_ORC "ON" CACHE STRING "")
set(COMPILER_RT_BUILD_PROFILE "OFF" CACHE STRING "")
set(COMPILER_RT_BUILD_SANITIZERS "ON" CACHE STRING "")
set(COMPILER_RT_BUILD_XRAY "OFF" CACHE STRING "")
set(COMPILER_RT_BUILD_GWP_ASAN "OFF" CACHE STRING "")
set(CXX_SUPPORTS_CUSTOM_LINKER "ON" CACHE STRING "")
set(LIBCXXABI_USE_COMPILER_RT "ON" CACHE STRING "")
set(LIBCXXABI_USE_LLVM_UNWINDER "ON" CACHE STRING "")
set(LIBCXX_INCLUDE_TESTS "OFF" CACHE STRING "")
set(LIBCXX_CXX_ABI "libcxxabi" CACHE STRING "")
set(LIBCXX_HAS_MUSL_LIBC "ON" CACHE STRING "")
set(LIBCXX_INCLUDE_BENCHMARKS "OFF" CACHE STRING "")
set(LIBCXX_USE_COMPILER_RT "ON" CACHE STRING "")
set(LIBUNWIND_ENABLE_CROSS_UNWINDING "ON" CACHE STRING "")
set(LIBUNWIND_SUPPORTS_FNO_EXCEPTIONS_FLAG "ON" CACHE STRING "")
set(LIBUNWIND_SUPPORTS_FNO_RTTI_FLAG "ON" CACHE STRING "")
set(LIBUNWIND_SUPPORTS_NODEFAULTLIBS_FLAG "ON" CACHE STRING "")
set(LIBUNWIND_USE_COMPILER_RT ON CACHE STRING "")
set(LLVM_BUILD_BENCHMARKS "OFF" CACHE STRING "")
set(LLVM_BUILD_COMPILER_RT "ON" CACHE STRING "")
set(LLVM_BUILD_DOCS "OFF" CACHE STRING "")
set(LLVM_BUILD_EXAMPLES "OFF" CACHE STRING "")
set(LLVM_BUILD_LLVM_DYLIB "ON" CACHE STRING "")
set(LLVM_BUILD_TESTS "OFF" CACHE STRING "")
set(PPC_LINUX_DEFAULT_IEEELONGDOUBLE ON CACHE STRING "")
set(LLVM_ENABLE_ZLIB ON CACHE STRING "")
set(BOOTSTRAP_LLVM_ENABLE_LLD ON CACHE BOOL "")

# Expose stage2 targets through the stage1 build configuration.
# set(CLANG_BOOTSTRAP_TARGETS
#   check-all
#   check-llvm
#   check-clang
#   llvm-config
#   llvm-tblgen
#   test-suite
#   test-depends
#   llvm-test-depends
#   clang-test-depends
#   LTO
#   Polly
#   pstl
#   lld
#   lldb
#   llvm-lto
#   llvm-lto2
#   distribution
#   install-distribution
#   clang CACHE STRING "")

set(CLANG_BOOTSTRAP_TARGETS
  check-all
  check-llvm
  check-clang
  llvm-config
  llvm-tblgen
  test-suite
  test-depends
  llvm-test-depends
  clang-test-depends
  LTO
  Polly
  lld
  lldb
  llvm-lto
  llvm-lto2
  distribution
  install-distribution
  clang CACHE STRING "")
# Setup the bootstrap build.
set(CLANG_ENABLE_BOOTSTRAP ON CACHE BOOL "")

if(STAGE2_CACHE_FILE)
  set(CLANG_BOOTSTRAP_CMAKE_ARGS
    -C ${STAGE2_CACHE_FILE}
    CACHE STRING "")
else()
  set(CLANG_BOOTSTRAP_CMAKE_ARGS
    -C ${CMAKE_CURRENT_LIST_DIR}/distribution-stage2.cmake
    CACHE STRING "")
endif()
