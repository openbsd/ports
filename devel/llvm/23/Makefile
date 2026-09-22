LLVM_MAJOR =	23
LLVM_VERSION =	${LLVM_MAJOR}.1.2
LLVM_PKGSPEC =	>=23,<24

SHARED_LIBS +=	LLVM		0.0 \
		LTO		0.0 \
		Remarks		0.0 \
		clang-cpp	0.0 \
		clang		0.0 \
		ec++		0.0 \
		ec++abi		0.0 \
		lldb		0.0

WANTLIB-lldb +=	execinfo

# Apache License v2.0 with LLVM Exceptions
PERMIT_PACKAGE =	Yes

MODULES +=	lang/python

BUILD_DEPENDS +=	textproc/py-myst-parser

.include <bsd.port.mk>
