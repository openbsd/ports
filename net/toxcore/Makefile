# $OpenBSD: Makefile,v 1.4 2019/04/29 11:46:07 cwen Exp $

COMMENT =		Tox client library

V =			0.2.3
REVISION =		1
DISTNAME =		toxcore-$V

GH_ACCOUNT =		TokTok
GH_PROJECT =		c-toxcore
GH_TAGNAME =		v$V

SHARED_LIBS +=  	toxcore	0.1 # 0.1
CATEGORIES =		net telephony

HOMEPAGE =		https://tox.chat/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = c config m opus pthread sodium vpx

# "-Wno-c99-extensions" isn't recognized by base-gcc
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		audio/opus \
			devel/libconfig \
			multimedia/libvpx \
			security/libsodium

NO_TEST =		Yes

.include <bsd.port.mk>
