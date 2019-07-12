# $OpenBSD: Makefile,v 1.3 2019/07/12 20:44:05 sthen Exp $

COMMENT =		Javascript Object Signing and Encryption library

GH_ACCOUNT =		cisco
GH_PROJECT =		cjose
GH_TAGNAME =		0.6.1

SHARED_LIBS =		cjose 0.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/cisco/cjose

MAINTAINER =		YASUOKA Masahiko <yasuoka@yasuoka.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		crypto jansson m

BUILD_DEPENDS =		devel/check
LIB_DEPENDS =		devel/jansson

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--with-jansson=${PREFIX}

.include <bsd.port.mk>
