# $OpenBSD: Makefile,v 1.1.1.1 2019/01/30 07:58:19 yasuoka Exp $

COMMENT =		Javascript Object Signing and Encryption library

GH_ACCOUNT =		cisco
GH_PROJECT =		cjose
GH_TAGNAME =		0.6.1

SHARED_LIBS =		cjose 0.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/cisco/cjose

MAINTAINER =		YASUOKA Masahiko <yasuoka@yasuoka.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto jansson m

BUILD_DEPENDS =		devel/check \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =		devel/jansson

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-jansson=${PREFIX}

do-gen:
	@cd ${WRKSRC} && ${SETENV} ${AUTOCONF_ENV} autoreconf

.include <bsd.port.mk>
