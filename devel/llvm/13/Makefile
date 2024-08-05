LLVM_MAJOR =	13
LLVM_VERSION =	${LLVM_MAJOR}.0.0
LLVM_PKGSPEC =	>=13,<14

REVISION-main =		30
REVISION-python =	6

MULTI_PACKAGES =	-main -python
PROJECTS =		clang;lld

SHARED_LIBS +=	LTO		6.0 \
		Remarks		0.0 \
		clang-cpp	1.0 \
		clang		8.2

# Apache License v2.0 with LLVM Exceptions
PERMIT_PACKAGE =	Yes

.include <bsd.port.mk>
