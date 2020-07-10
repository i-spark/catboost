RESOURCES_LIBRARY()



IF (HOST_OS_DARWIN AND HOST_ARCH_X86_64 OR
    HOST_OS_LINUX AND HOST_ARCH_X86_64 OR
    HOST_OS_WINDOWS AND HOST_ARCH_X86_64)
ELSE()
    MESSAGE(FATAL_ERROR Unsupported host platform for prebuilt arcadia yasm)
ENDIF()

DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
    ARCADIA_YASM
    sbr:1601295306 FOR DARWIN
    sbr:1601295551 FOR LINUX
    sbr:1601295437 FOR WIN32
)

END()