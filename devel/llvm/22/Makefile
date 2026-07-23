LLVM_MAJOR =	22
LLVM_VERSION =	${LLVM_MAJOR}.1.8
LLVM_PKGSPEC =	>=22,<23

REVISION =		2

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

.include <bsd.port.mk>
