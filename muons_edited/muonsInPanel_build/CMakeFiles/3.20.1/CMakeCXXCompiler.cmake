set(CMAKE_CXX_COMPILER "/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++")
set(CMAKE_CXX_COMPILER_ARG1 "")
set(CMAKE_CXX_COMPILER_ID "GNU")
set(CMAKE_CXX_COMPILER_VERSION "10.2.0")
set(CMAKE_CXX_COMPILER_VERSION_INTERNAL "")
set(CMAKE_CXX_COMPILER_WRAPPER "")
set(CMAKE_CXX_STANDARD_COMPUTED_DEFAULT "14")
set(CMAKE_CXX_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters;cxx_std_11;cxx_alias_templates;cxx_alignas;cxx_alignof;cxx_attributes;cxx_auto_type;cxx_constexpr;cxx_decltype;cxx_decltype_incomplete_return_types;cxx_default_function_template_args;cxx_defaulted_functions;cxx_defaulted_move_initializers;cxx_delegating_constructors;cxx_deleted_functions;cxx_enum_forward_declarations;cxx_explicit_conversions;cxx_extended_friend_declarations;cxx_extern_templates;cxx_final;cxx_func_identifier;cxx_generalized_initializers;cxx_inheriting_constructors;cxx_inline_namespaces;cxx_lambdas;cxx_local_type_template_args;cxx_long_long_type;cxx_noexcept;cxx_nonstatic_member_init;cxx_nullptr;cxx_override;cxx_range_for;cxx_raw_string_literals;cxx_reference_qualified_functions;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_thread_local;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_unrestricted_unions;cxx_user_literals;cxx_variadic_macros;cxx_variadic_templates;cxx_std_14;cxx_aggregate_default_initializers;cxx_attribute_deprecated;cxx_binary_literals;cxx_contextual_conversions;cxx_decltype_auto;cxx_digit_separators;cxx_generic_lambdas;cxx_lambda_init_captures;cxx_relaxed_constexpr;cxx_return_type_deduction;cxx_variable_templates;cxx_std_17;cxx_std_20")
set(CMAKE_CXX98_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters")
set(CMAKE_CXX11_COMPILE_FEATURES "cxx_std_11;cxx_alias_templates;cxx_alignas;cxx_alignof;cxx_attributes;cxx_auto_type;cxx_constexpr;cxx_decltype;cxx_decltype_incomplete_return_types;cxx_default_function_template_args;cxx_defaulted_functions;cxx_defaulted_move_initializers;cxx_delegating_constructors;cxx_deleted_functions;cxx_enum_forward_declarations;cxx_explicit_conversions;cxx_extended_friend_declarations;cxx_extern_templates;cxx_final;cxx_func_identifier;cxx_generalized_initializers;cxx_inheriting_constructors;cxx_inline_namespaces;cxx_lambdas;cxx_local_type_template_args;cxx_long_long_type;cxx_noexcept;cxx_nonstatic_member_init;cxx_nullptr;cxx_override;cxx_range_for;cxx_raw_string_literals;cxx_reference_qualified_functions;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_thread_local;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_unrestricted_unions;cxx_user_literals;cxx_variadic_macros;cxx_variadic_templates")
set(CMAKE_CXX14_COMPILE_FEATURES "cxx_std_14;cxx_aggregate_default_initializers;cxx_attribute_deprecated;cxx_binary_literals;cxx_contextual_conversions;cxx_decltype_auto;cxx_digit_separators;cxx_generic_lambdas;cxx_lambda_init_captures;cxx_relaxed_constexpr;cxx_return_type_deduction;cxx_variable_templates")
set(CMAKE_CXX17_COMPILE_FEATURES "cxx_std_17")
set(CMAKE_CXX20_COMPILE_FEATURES "cxx_std_20")
set(CMAKE_CXX23_COMPILE_FEATURES "")

set(CMAKE_CXX_PLATFORM_ID "Linux")
set(CMAKE_CXX_SIMULATE_ID "")
set(CMAKE_CXX_COMPILER_FRONTEND_VARIANT "")
set(CMAKE_CXX_SIMULATE_VERSION "")




set(CMAKE_AR "/gpfs/loomis/apps/avx/software/binutils/2.35-GCCcore-10.2.0/bin/ar")
set(CMAKE_CXX_COMPILER_AR "/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/gcc-ar")
set(CMAKE_RANLIB "/gpfs/loomis/apps/avx/software/binutils/2.35-GCCcore-10.2.0/bin/ranlib")
set(CMAKE_CXX_COMPILER_RANLIB "/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/gcc-ranlib")
set(CMAKE_LINKER "/gpfs/loomis/apps/avx/software/binutils/2.35-GCCcore-10.2.0/bin/ld")
set(CMAKE_MT "")
set(CMAKE_COMPILER_IS_GNUCXX 1)
set(CMAKE_CXX_COMPILER_LOADED 1)
set(CMAKE_CXX_COMPILER_WORKS TRUE)
set(CMAKE_CXX_ABI_COMPILED TRUE)
set(CMAKE_COMPILER_IS_MINGW )
set(CMAKE_COMPILER_IS_CYGWIN )
if(CMAKE_COMPILER_IS_CYGWIN)
  set(CYGWIN 1)
  set(UNIX 1)
endif()

set(CMAKE_CXX_COMPILER_ENV_VAR "CXX")

if(CMAKE_COMPILER_IS_MINGW)
  set(MINGW 1)
endif()
set(CMAKE_CXX_COMPILER_ID_RUN 1)
set(CMAKE_CXX_SOURCE_FILE_EXTENSIONS C;M;c++;cc;cpp;cxx;m;mm;mpp;CPP)
set(CMAKE_CXX_IGNORE_EXTENSIONS inl;h;hpp;HPP;H;o;O;obj;OBJ;def;DEF;rc;RC)

foreach (lang C OBJC OBJCXX)
  if (CMAKE_${lang}_COMPILER_ID_RUN)
    foreach(extension IN LISTS CMAKE_${lang}_SOURCE_FILE_EXTENSIONS)
      list(REMOVE_ITEM CMAKE_CXX_SOURCE_FILE_EXTENSIONS ${extension})
    endforeach()
  endif()
endforeach()

set(CMAKE_CXX_LINKER_PREFERENCE 30)
set(CMAKE_CXX_LINKER_PREFERENCE_PROPAGATES 1)

# Save compiler ABI information.
set(CMAKE_CXX_SIZEOF_DATA_PTR "8")
set(CMAKE_CXX_COMPILER_ABI "ELF")
set(CMAKE_CXX_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_CXX_LIBRARY_ARCHITECTURE "")

if(CMAKE_CXX_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_CXX_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_CXX_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_CXX_COMPILER_ABI}")
endif()

if(CMAKE_CXX_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX "")
if(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX)
  set(CMAKE_CL_SHOWINCLUDES_PREFIX "${CMAKE_CXX_CL_SHOWINCLUDES_PREFIX}")
endif()





set(CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES "/gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/CLHEP/2.4.4.1-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/ROOT/6.26.06-foss-2020b/include;/gpfs/loomis/apps/avx/software/GL2PS/1.4.2-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/freeglut/3.2.1-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libGLU/9.0.1-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/Mesa/20.2.1-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/LLVM/11.0.0-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libunwind/1.4.0-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libglvnd/1.3.2-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libdrm/2.4.102-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/zstd/1.4.5-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/lz4/1.9.2-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/X11/20201008-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/fontconfig/2.13.92-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/util-linux/2.36-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/expat/2.2.9-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/SciPy-bundle/2021.02-foss-2020b/lib/python3.8/site-packages/numpy/core/include;/gpfs/loomis/apps/avx/software/pybind11/2.6.2-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/Python/3.8.6-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libffi/3.3-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/GMP/6.2.0-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/SQLite/3.33.0-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/Tcl/8.6.10-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libreadline/8.0-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/freetype/2.10.3-GCCcore-10.2.0/include/freetype2;/gpfs/loomis/apps/avx/software/libpng/1.6.37-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/CFITSIO/3.48-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/PCRE/8.44-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/GSL/2.6-GCC-10.2.0/include;/gpfs/loomis/apps/avx/software/FFTW/3.3.8-gompi-2020b/include;/gpfs/loomis/apps/avx/software/OpenBLAS/0.3.12-GCC-10.2.0/include;/gpfs/loomis/apps/avx/software/OpenMPI/4.0.5-GCC-10.2.0/include;/gpfs/loomis/apps/avx/software/libfabric/1.11.0-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/UCX/1.9.0-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libevent/2.1.12-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/hwloc/2.2.0-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libpciaccess/0.16-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libxml2/2.9.10-GCCcore-10.2.0/include/libxml2;/gpfs/loomis/apps/avx/software/libxml2/2.9.10-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/XZ/5.2.5-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/numactl/2.0.13-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/binutils/2.35-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libtool/2.4.6-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/libarchive/3.4.3-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/cURL/7.72.0-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/bzip2/1.0.8-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/zlib/1.2.11-GCCcore-10.2.0/include;/gpfs/loomis/apps/avx/software/ncurses/6.2-GCCcore-10.2.0/include;/vast/palmer/apps/avx.grace/software/GCCcore/10.2.0-patched/include/c++/10.2.0;/vast/palmer/apps/avx.grace/software/GCCcore/10.2.0-patched/include/c++/10.2.0/x86_64-pc-linux-gnu;/vast/palmer/apps/avx.grace/software/GCCcore/10.2.0-patched/include/c++/10.2.0/backward;/vast/palmer/apps/avx.grace/software/GCCcore/10.2.0-patched/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include;/gpfs/loomis/apps/avx/software/GCCcore/10.2.0-patched/include;/usr/include")
set(CMAKE_CXX_IMPLICIT_LINK_LIBRARIES "stdc++;m;gcc_s;gcc;c;gcc_s;gcc")
set(CMAKE_CXX_IMPLICIT_LINK_DIRECTORIES "/vast/palmer/apps/avx.grace/software/GCCcore/10.2.0-patched/lib/gcc/x86_64-pc-linux-gnu/10.2.0;/vast/palmer/apps/avx.grace/software/GCCcore/10.2.0-patched/lib/gcc;/gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/CLHEP/2.4.4.1-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/ROOT/6.26.06-foss-2020b/lib64;/gpfs/loomis/apps/avx/software/GL2PS/1.4.2-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/freeglut/3.2.1-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libGLU/9.0.1-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/Mesa/20.2.1-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/LLVM/11.0.0-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libunwind/1.4.0-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libglvnd/1.3.2-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libdrm/2.4.102-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/zstd/1.4.5-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/lz4/1.9.2-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/X11/20201008-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/fontconfig/2.13.92-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/util-linux/2.36-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/expat/2.2.9-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/SciPy-bundle/2021.02-foss-2020b/lib64;/gpfs/loomis/apps/avx/software/Python/3.8.6-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libffi/3.3-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/GMP/6.2.0-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/SQLite/3.33.0-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/Tcl/8.6.10-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libreadline/8.0-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/freetype/2.10.3-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libpng/1.6.37-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/CFITSIO/3.48-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/PCRE/8.44-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/GSL/2.6-GCC-10.2.0/lib64;/gpfs/loomis/apps/avx/software/ScaLAPACK/2.1.0-gompi-2020b/lib64;/gpfs/loomis/apps/avx/software/FFTW/3.3.8-gompi-2020b/lib64;/gpfs/loomis/apps/avx/software/OpenBLAS/0.3.12-GCC-10.2.0/lib64;/gpfs/loomis/apps/avx/software/OpenMPI/4.0.5-GCC-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libfabric/1.11.0-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/UCX/1.9.0-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libevent/2.1.12-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/hwloc/2.2.0-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libpciaccess/0.16-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libxml2/2.9.10-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/XZ/5.2.5-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/numactl/2.0.13-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/binutils/2.35-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libtool/2.4.6-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/libarchive/3.4.3-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/cURL/7.72.0-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/bzip2/1.0.8-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/zlib/1.2.11-GCCcore-10.2.0/lib64;/gpfs/loomis/apps/avx/software/ncurses/6.2-GCCcore-10.2.0/lib64;/vast/palmer/apps/avx.grace/software/GCCcore/10.2.0-patched/lib64;/lib64;/usr/lib64;/gpfs/loomis/apps/avx/software/CLHEP/2.4.4.1-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/ROOT/6.26.06-foss-2020b/lib;/gpfs/loomis/apps/avx/software/GL2PS/1.4.2-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libGLU/9.0.1-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/Mesa/20.2.1-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/LLVM/11.0.0-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libunwind/1.4.0-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libglvnd/1.3.2-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libdrm/2.4.102-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/zstd/1.4.5-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/lz4/1.9.2-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/X11/20201008-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/fontconfig/2.13.92-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/util-linux/2.36-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/expat/2.2.9-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/SciPy-bundle/2021.02-foss-2020b/lib/python3.8/site-packages/numpy/core/lib;/gpfs/loomis/apps/avx/software/SciPy-bundle/2021.02-foss-2020b/lib;/gpfs/loomis/apps/avx/software/Python/3.8.6-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libffi/3.3-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/GMP/6.2.0-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/SQLite/3.33.0-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/Tcl/8.6.10-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libreadline/8.0-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/freetype/2.10.3-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libpng/1.6.37-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/CFITSIO/3.48-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/PCRE/8.44-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/GSL/2.6-GCC-10.2.0/lib;/gpfs/loomis/apps/avx/software/ScaLAPACK/2.1.0-gompi-2020b/lib;/gpfs/loomis/apps/avx/software/FFTW/3.3.8-gompi-2020b/lib;/gpfs/loomis/apps/avx/software/OpenBLAS/0.3.12-GCC-10.2.0/lib;/gpfs/loomis/apps/avx/software/OpenMPI/4.0.5-GCC-10.2.0/lib;/gpfs/loomis/apps/avx/software/libfabric/1.11.0-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/UCX/1.9.0-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libevent/2.1.12-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/hwloc/2.2.0-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libpciaccess/0.16-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libxml2/2.9.10-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/XZ/5.2.5-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/numactl/2.0.13-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/binutils/2.35-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libtool/2.4.6-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/libarchive/3.4.3-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/cURL/7.72.0-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/bzip2/1.0.8-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/zlib/1.2.11-GCCcore-10.2.0/lib;/gpfs/loomis/apps/avx/software/ncurses/6.2-GCCcore-10.2.0/lib;/vast/palmer/apps/avx.grace/software/GCCcore/10.2.0-patched/lib")
set(CMAKE_CXX_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
