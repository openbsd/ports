# $OpenBSD: Makefile,v 1.8 2021/01/03 19:35:02 sthen Exp $

COMMENT =		Tox client library

V =			0.2.12
DISTNAME =		toxcore-$V

GH_ACCOUNT =		TokTok
GH_PROJECT =		c-toxcore
GH_TAGNAME =		v$V

SHARED_LIBS +=		toxcore	1.0

CATEGORIES =		net telephony

HOMEPAGE =		https://tox.chat/

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
