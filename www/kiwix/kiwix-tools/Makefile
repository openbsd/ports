COMMENT =	command-line Kiwix tools

BROKEN =	kiwix-tools-3.7.0 is incompatible with libkiwix-14.0.0

KIWIX_PROJECT =	kiwix-tools
V =		3.7.0

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c kiwix zim

# C++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		www/kiwix/libkiwix

.include <bsd.port.mk>
