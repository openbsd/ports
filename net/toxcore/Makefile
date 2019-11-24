# $OpenBSD: Makefile,v 1.7 2019/11/24 23:05:10 cwen Exp $

COMMENT =		Tox client library

V =			0.2.3
REVISION =		3
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
