# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:50 sthen Exp $

COMMENT =		Tox client library

V =			0.2.3
REVISION =		2
DISTNAME =		toxcore-$V

GH_ACCOUNT =		TokTok
GH_PROJECT =		c-toxcore
GH_TAGNAME =		v$V

SHARED_LIBS +=  	toxcore	0.1 # 0.1
CATEGORIES =		net telephony

HOMEPAGE =		https://tox.chat/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB = c config m opus pthread sodium vpx

MODULES =		devel/cmake

LIB_DEPENDS =		audio/opus \
			devel/libconfig \
			multimedia/libvpx \
			security/libsodium

NO_TEST =		Yes

.include <bsd.port.mk>
