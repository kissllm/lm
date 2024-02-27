

# set ( llvm-min-tblgen_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0114 NEW CACHE STRING "" )

set ( BUILTINS_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0002 NEW CACHE STRING "" )
set ( BUILTINS_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0003 NEW CACHE STRING "" )
set ( BUILTINS_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0056 NEW CACHE STRING "" )
set ( BUILTINS_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0057 NEW CACHE STRING "" )
set ( BUILTINS_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0058 NEW CACHE STRING "" )
set ( BUILTINS_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0011 NEW CACHE STRING "" )
set ( BUILTINS_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0076 NEW CACHE STRING "" )

set ( RUNTIMES_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0002 NEW CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0003 NEW CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0056 NEW CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0057 NEW CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0058 NEW CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0011 NEW CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0076 NEW CACHE STRING "" )

set ( BUILTINS_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0114 NEW CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_CMAKE_POLICY_DEFAULT_CMP0114 NEW CACHE STRING "" )

set ( BUILTINS_x86_64-linux-musl_CMAKE_CXX_STANDARD  20 CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_CMAKE_CXX_STANDARD  20 CACHE STRING "" )

set ( BUILTINS_x86_64-linux-musl_CLANG_DEFAULT_LINKER    ld.lld      CACHE STRING "" )
set ( BUILTINS_x86_64-linux-musl_CLANG_DEFAULT_RTLIB     compiler-rt CACHE STRING "" )
set ( BUILTINS_x86_64-linux-musl_CLANG_DEFAULT_UNWINDLIB libunwind   CACHE STRING "" )

set ( RUNTIMES_x86_64-linux-musl_CLANG_DEFAULT_LINKER    ld.lld      CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_CLANG_DEFAULT_RTLIB     compiler-rt CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_CLANG_DEFAULT_UNWINDLIB libunwind   CACHE STRING "" )

set ( RUNTIMES_x86_64-linux-musl_CXX_SUPPORTS_FNO_EXCEPTIONS_FLAG 1 CACHE INTERNAL "" )
set ( RUNTIMES_x86_64-linux-musl_CXX_SUPPORTS_FUNWIND_TABLES_FLAG 1 CACHE INTERNAL "" )

option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_BUILD_GWP_ASAN       "" OFF )
option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_BUILD_PROFILE        "" OFF )
option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_BUILD_SANITIZERS     "" OFF )
option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_BUILD_XRAY           "" OFF )
option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_BUILD_LIBFUZZER      "" OFF )
option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_BUILD_MEMPROF        "" OFF )
option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_BUILD_ORC            "" OFF )
option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_ENABLE_CET           "" OFF )
option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_BUILD_CRT            "" ON )
option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_BUILD_BUILTINS       "" ON )
option ( RUNTIMES_x86_64-linux-musl_CMAKE_CXX_COMPILER_WORKS         "" ON )
option ( RUNTIMES_x86_64-linux-musl_CMAKE_C_COMPILER_WORKS           "" ON )
option ( RUNTIMES_x86_64-linux-musl_CMAKE_ASM_COMPILER_WORKS         "" ON )
option ( RUNTIMES_x86_64-linux-musl_LIBCXXABI_USE_LLVM_UNWINDER      "" ON )
option ( RUNTIMES_x86_64-linux-musl_LLVM_LIBGCC_EXPLICIT_OPT_IN      "" ON )
option ( RUNTIMES_x86_64-linux-musl_COMPILER_RT_USE_BUILTINS_LIBRARY "" ON )
option ( RUNTIMES_x86_64-linux-musl_DEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY "" ON )

option ( BUILTINS_x86_64-linux-musl_CMAKE_CXX_COMPILER_WORKS         "" ON )
option ( BUILTINS_x86_64-linux-musl_CMAKE_C_COMPILER_WORKS           "" ON )
option ( BUILTINS_x86_64-linux-musl_CMAKE_ASM_COMPILER_WORKS         "" ON )
option ( BUILTINS_x86_64-linux-musl_LIBCXXABI_USE_LLVM_UNWINDER      "" ON )
option ( BUILTINS_x86_64-linux-musl_COMPILER_RT_USE_BUILTINS_LIBRARY "" ON )
option ( BUILTINS_x86_64-linux-musl_DEFAULT_COMPILER_RT_USE_BUILTINS_LIBRARY "" ON )

option ( RUNTIMES_x86_64-linux-musl_LLVM_ENABLE_PER_TARGET_RUNTIME_DIR "" "$ENV{LLVM_ENABLE_PER_TARGET_RUNTIME_DIR_default}" )
option ( BUILTINS_x86_64-linux-musl_LLVM_ENABLE_PER_TARGET_RUNTIME_DIR "" "$ENV{LLVM_ENABLE_PER_TARGET_RUNTIME_DIR_default}" )

# set ( BUILTINS_x86_64-linux-musl_LLVM_BINARY_DIR "/$ENV{PREFIX_HOST}" CACHE STRING "" )


message ( STATUS "CACHED \$ENV{CFLAGS}        = $ENV{CFLAGS}" )
message ( STATUS "CACHED \$ENV{CXXFLAGS}      = $ENV{CXXFLAGS}" )
message ( STATUS "CACHED \$ENV{DESTDIR}       = $ENV{DESTDIR}" )
message ( STATUS "CACHED \$ENV{PREFIX_HOST}   = $ENV{PREFIX_HOST}" )
message ( STATUS "CACHED \$ENV{KISS_ROOT}     = $ENV{KISS_ROOT}" )
message ( STATUS "CACHED \$ENV{MAKE_DIR}      = $ENV{MAKE_DIR}" )
message ( STATUS "CACHED \$ENV{OUTPUT_FOLDER} = $ENV{OUTPUT_FOLDER}" )
message ( STATUS "CACHED \$ENV{version_target_major} = $ENV{version_target_major}" )

set ( LIBUNWIND_C_FLAGS " \
-fPIC --sysroot=$ENV{KISS_ROOT} \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/lib/clang/$ENV{version_target_major}/include \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/lib/clang/$ENV{version_target_major}/include/openmp_wrappers \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/lib/clang/$ENV{version_target_major}/include/cuda_wrappers \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/lib/clang/$ENV{version_target_major}/include/llvm_libc_wrappers \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/lib/clang/$ENV{version_target_major}/include/ppc_wrappers \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/runtimes/runtimes-bins/pstl/generated_headers \
-isystem $ENV{DESTDIR}/lib/clang/$ENV{version_target_major}/include \
-isystem $ENV{MAKE_DIR}/pstl/include \
-isystem $ENV{MAKE_DIR}/clang/lib/Headers \
-isystem $ENV{KISS_ROOT}/$ENV{PREFIX_HOST}/include \
$ENV{CFLAGS} \
" \
CACHE STRING "" )

set ( LIBUNWIND_CXX_FLAGS " \
-D_LIBCPP_STD_VER=23 \
-fPIC --sysroot=$ENV{KISS_ROOT} \
-isystem $ENV{KISS_ROOT}/$ENV{PREFIX_HOST}/include/c++/v1 \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/include/x86_64-linux-musl/c++/v1 \
-isystem $ENV{DESTDIR}/lib/clang/$ENV{version_target_major}/include/c++/v1 \
-isystem $ENV{DESTDIR}/usr/include/c++/v1 \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/include/c++/v1 \
-isystem $ENV{MAKE_DIR}/libcxx/include \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/lib/clang/$ENV{version_target_major}/include \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/lib/clang/$ENV{version_target_major}/include/openmp_wrappers \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/lib/clang/$ENV{version_target_major}/include/cuda_wrappers \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/lib/clang/$ENV{version_target_major}/include/llvm_libc_wrappers \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/lib/clang/$ENV{version_target_major}/include/ppc_wrappers \
-isystem $ENV{MAKE_DIR}/$ENV{OUTPUT_FOLDER}/runtimes/runtimes-bins/pstl/generated_headers \
-isystem $ENV{DESTDIR}/lib/clang/$ENV{version_target_major}/include \
-isystem $ENV{MAKE_DIR}/pstl/include \
-isystem $ENV{MAKE_DIR}/clang/lib/Headers \
-isystem $ENV{KISS_ROOT}/$ENV{PREFIX_HOST}/include \
$ENV{CFLAGS} \
$ENV{CXXFLAGS} \
" \
CACHE STRING "" )

set ( LIBUNWIND_LINK_FLAGS    "$ENV{LDFLAGS} -Wl,-z,relro -Wl,--build-id" CACHE STRING "" )

message ( STATUS "CACHED \${LIBUNWIND_C_FLAGS}    = ${LIBUNWIND_C_FLAGS}" )
message ( STATUS "CACHED \${LIBUNWIND_CXX_FLAGS}  = ${LIBUNWIND_CXX_FLAGS}" )
message ( STATUS "CACHED \${LIBUNWIND_LINK_FLAGS} = ${LIBUNWIND_LINK_FLAGS}" )

set ( LIBUNWIND_CPP_FLAGS     "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( LIBUNWIND_COMPILE_FLAGS "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( LIBUNWIND_ADDITIONAL_COMPILE_FLAGS "${LIBUNWIND_CXX_FLAGS}" CACHE STRING "" )

set ( LIBCXXABI_C_FLAGS       "${LIBUNWIND_C_FLAGS}"    CACHE STRING "" )
set ( LIBCXXABI_CXX_FLAGS     "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( LIBCXXABI_CPP_FLAGS     "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( LIBCXXABI_COMPILE_FLAGS "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( LIBCXXABI_LINK_FLAGS    "${LIBUNWIND_LINK_FLAGS}" CACHE STRING "" )
set ( LIBCXXABI_ADDITIONAL_COMPILE_FLAGS "${LIBUNWIND_CXX_FLAGS}" CACHE STRING "" )

set ( LIBCXX_C_FLAGS          "${LIBUNWIND_C_FLAGS}"    CACHE STRING "" )
set ( LIBCXX_CXX_FLAGS        "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( LIBCXX_CPP_FLAGS        "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( LIBCXX_COMPILE_FLAGS    "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( LIBCXX_LINK_FLAGS       "${LIBUNWIND_LINK_FLAGS}" CACHE STRING "" )
set ( LIBCXX_ADDITIONAL_COMPILE_FLAGS "${LIBUNWIND_CXX_FLAGS}" CACHE STRING "" )

set ( LIBOMP_CFLAGS           "${LIBUNWIND_C_FLAGS}"    CACHE STRING "" )
set ( LIBOMP_CXXFLAGS         "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( LIBOMP_CPPFLAGS         "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( LIBOMP_LDFLAGS          "${LIBUNWIND_LINK_FLAGS}" CACHE STRING "" )

set ( RUNTIMES_x86_64-linux-musl_LIBUNWIND_C_FLAGS       "${LIBUNWIND_C_FLAGS}"    CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBUNWIND_CXX_FLAGS     "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBUNWIND_CPP_FLAGS     "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBUNWIND_COMPILE_FLAGS "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBUNWIND_LINK_FLAGS    "${LIBUNWIND_LINK_FLAGS}" CACHE STRING "" )
# set ( RUNTIMES_x86_64-linux-musl_LIBUNWIND_ADDITIONAL_COMPILE_FLAGS "${LIBUNWIND_CXX_FLAGS}" CACHE STRING "" )

# Disable libcc_s
option ( RUNTIMES_x86_64-linux-musl_LIBUNWIND_USE_COMPILER_RT "" "ON" )

set ( RUNTIMES_x86_64-linux-musl_LIBCXXABI_C_FLAGS       "${LIBUNWIND_C_FLAGS}"    CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBCXXABI_CXX_FLAGS     "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBCXXABI_CPP_FLAGS     "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBCXXABI_COMPILE_FLAGS "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBCXXABI_LINK_FLAGS    "${LIBUNWIND_LINK_FLAGS}" CACHE STRING "" )
# set ( RUNTIMES_x86_64-linux-musl_LIBCXXABI_ADDITIONAL_COMPILE_FLAGS "${LIBUNWIND_CXX_FLAGS}" CACHE STRING "" )

# Disable libcc_s
option ( RUNTIMES_x86_64-linux-musl_LIBCXXABI_USE_COMPILER_RT "" "ON" )

set ( RUNTIMES_x86_64-linux-musl_LIBCXX_C_FLAGS          "${LIBUNWIND_C_FLAGS}"    CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBCXX_CXX_FLAGS        "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBCXX_CPP_FLAGS        "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBCXX_COMPILE_FLAGS    "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBCXX_LINK_FLAGS       "${LIBUNWIND_LINK_FLAGS}" CACHE STRING "" )
# set ( RUNTIMES_x86_64-linux-musl_LIBCXX_ADDITIONAL_COMPILE_FLAGS "${LIBUNWIND_CXX_FLAGS}" CACHE STRING "" )

# Disable libcc_s
option ( RUNTIMES_x86_64-linux-musl_LIBCXX_USE_COMPILER_RT "" "ON" )

set ( RUNTIMES_x86_64-linux-musl_LIBOMP_CFLAGS           "${LIBUNWIND_C_FLAGS}"    CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBOMP_CXXFLAGS         "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBOMP_CPPFLAGS         "${LIBUNWIND_CXX_FLAGS}"  CACHE STRING "" )
set ( RUNTIMES_x86_64-linux-musl_LIBOMP_LDFLAGS          "${LIBUNWIND_LINK_FLAGS}" CACHE STRING "" )

set ( RUNTIMES_CMAKE_ARGS " \
-DCMAKE_C_FLAGS=${LIBUNWIND_C_FLAGS} -fstack-protector-strong -Wformat \
-Werror=format-security -Wno-unused-command-line-argument -Wdate-time -D_FORTIFY_SOURCE=2; \
-DCMAKE_CXX_FLAGS=${LIBUNWIND_CXX_FLAGS} -fstack-protector-strong -Wformat \
-Werror=format-security -Wno-unused-command-line-argument -Wdate-time -D_FORTIFY_SOURCE=2; \
-DCMAKE_EXE_LINKER_FLAGS=${LIBUNWIND_LINK_FLAGS}; \
-DCMAKE_SHARED_LINKER_FLAGS=${LIBUNWIND_LINK_FLAGS}; \
-DCMAKE_MODULE_LINKER_FLAGS=${LIBUNWIND_LINK_FLAGS}; \
-DCMAKE_BUILD_TYPE=Release; \
-DLLVM_ENABLE_PER_TARGET_RUNTIME_DIR=$ENV{LLVM_ENABLE_PER_TARGET_RUNTIME_DIR_default} \
" \
CACHE INTERNAL "" )

set ( RUNTIMES_x86_64-linux-musl_CMAKE_ARGS ${RUNTIMES_CMAKE_ARGS} CACHE INTERNAL "" )


