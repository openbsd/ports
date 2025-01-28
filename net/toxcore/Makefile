COMMENT =		Tox client library

V =			0.2.19
DISTNAME =		c-toxcore-$V
PKGNAME =		${DISTNAME:S/c-//}
REVISION =		0

SHARED_LIBS +=		toxcore	4.0

CATEGORIES =		net telephony

HOMEPAGE =		https://tox.chat/

MAINTAINER =		Omar Polo <op@openbsd.org>

SITES = 	https://github.com/TokTok/c-toxcore/releases/download/v$V/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB = c config m opus pthread sodium vpx

MODULES =		devel/cmake
# c++ in tests
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gtest

LIB_DEPENDS =		audio/opus \
			devel/libconfig \
			multimedia/libvpx \
			security/libsodium

TEST_DEPENDS =		devel/gtest

.include <bsd.port.mk>
