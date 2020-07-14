

PREBUILT_PROGRAM()

IF (HOST_OS_DARWIN AND HOST_ARCH_X86_64 OR
    HOST_OS_LINUX AND HOST_ARCH_X86_64 OR
    HOST_OS_WINDOWS AND HOST_ARCH_X86_64)
ELSE()
    MESSAGE(FATAL_ERROR Unsupported host platform for prebuilt arcadia rorescompiler)
ENDIF()

DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
    ARCADIA_RORESCOMPILER
    sbr:1601277222 FOR DARWIN
    sbr:1601277445 FOR LINUX
    sbr:1601277334 FOR WIN32
)

PRIMARY_OUTPUT(${ARCADIA_RORESCOMPILER_RESOURCE_GLOBAL}/rorescompiler${MODULE_SUFFIX})

INDUCED_DEPS(cpp ${ARCADIA_ROOT}/library/cpp/resource/registry.h)

END()