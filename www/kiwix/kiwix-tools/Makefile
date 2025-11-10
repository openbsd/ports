COMMENT =	command-line Kiwix tools

KIWIX_PROJECT =	kiwix-tools
V =		3.8.0

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c docopt kiwix zim

# C++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/docopt.cpp \
			www/kiwix/libkiwix

.include <bsd.port.mk>
