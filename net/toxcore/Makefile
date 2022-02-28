# $OpenBSD: Makefile,v 1.9 2022/02/28 12:50:52 op Exp $

COMMENT =		Tox client library

PKGNAME =		${DISTNAME:S/c-//}

GH_ACCOUNT =		TokTok
GH_PROJECT =		c-toxcore
GH_TAGNAME =		v0.2.16

SHARED_LIBS +=		toxcore	2.0

CATEGORIES =		net telephony

HOMEPAGE =		https://tox.chat/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB = c config m opus msgpackc pthread sodium vpx

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		audio/opus \
			devel/libconfig \
			devel/msgpack \
			multimedia/libvpx \
			security/libsodium

.include <bsd.port.mk>
