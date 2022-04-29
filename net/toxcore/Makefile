COMMENT =		Tox client library

V =			0.2.18
DISTNAME =		c-toxcore-$V
PKGNAME =		${DISTNAME:S/c-//}

SHARED_LIBS +=		toxcore	3.0

CATEGORIES =		net telephony

HOMEPAGE =		https://tox.chat/

MAINTAINER =		Omar Polo <op@openbsd.org>

MASTER_SITES = https://github.com/TokTok/c-toxcore/releases/download/v$V/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB = c config m opus pthread sodium vpx

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		audio/opus \
			devel/libconfig \
			multimedia/libvpx \
			security/libsodium

.include <bsd.port.mk>
