COMMENT =	command-line Kiwix tools

KIWIX_PROJECT =	kiwix-tools
V =		3.7.0

# Until 3.8.0 is released, use a commit that's compatible with libkiwix in ports
DISTNAME =	kiwix-tools-${V}pl20250402
GH_ACCOUNT =	kiwix
GH_PROJECT =	kiwix-tools
GH_COMMIT =	43b00419dd3f33eb644e1d83c2e802fc200b2de7
SITES =		https://github.com/kiwix/kiwix-tools/archive/
EXTRACT_SUFX =	.tar.gz

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c docopt kiwix zim

# C++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/docopt.cpp \
			www/kiwix/libkiwix

.include <bsd.port.mk>
