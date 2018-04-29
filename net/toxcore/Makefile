# $OpenBSD: Makefile,v 1.1.1.1 2018/04/29 11:14:09 landry Exp $

COMMENT =		Tox client library

V =			0.2.2
DISTNAME =		toxcore-$V

GH_ACCOUNT =		TokTok
GH_PROJECT =		c-toxcore
GH_TAGNAME =		v$V

SHARED_LIBS +=  	toxcore	0.0 # 0.0
CATEGORIES =		net telephony

HOMEPAGE =		https://tox.chat/

MAINTAINER =		Leonid Bobrov <mazocomp@disroot.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes


WANTLIB = c config m opus pthread sodium vpx

MODULES =		devel/cmake

LIB_DEPENDS =		audio/opus \
			devel/libconfig \
			multimedia/libvpx \
			security/libsodium

NO_TEST =		Yes

.include <bsd.port.mk>
