IF (OS_DARWIN AND ARCH_X86_64)
    SET(SANDBOX_RESOURCE_ID 1817859398)
ELSEIF (OS_LINUX AND ARCH_X86_64)
    SET(SANDBOX_RESOURCE_ID 1817859551)
ELSEIF (OS_WINDOWS AND ARCH_X86_64)
    SET(SANDBOX_RESOURCE_ID 1817859331)
ELSE()
    SET(SANDBOX_RESOURCE_ID)
ENDIF()
