# this is only used for lang/rust and lang/zig at the moment
ONLY_FOR_ARCHS =	amd64 arm64 powerpc64 riscv64 sparc64

LLVM_MAJOR =	20
LLVM_VERSION =	${LLVM_MAJOR}.1.8
LLVM_PKGSPEC =	>=20,<21

REVISION-main =	2

SHARED_LIBS +=	LLVM		0.0 \
		LTO		0.0 \
		Remarks		0.0 \
		clang-cpp	0.0 \
		clang		0.0 \
		ec++		0.0 \
		ec++abi		0.0 \
		lldb		0.0

# Apache License v2.0 with LLVM Exceptions
PERMIT_PACKAGE =	Yes

MODULES +=	lang/python

.include <bsd.port.mk>
