# $OpenBSD: Makefile,v 1.5 2020/02/03 20:40:40 sthen Exp $

COMMENT =	PHP bindings for the libmcrypt library

DISTNAME =	mcrypt-1.0.3
DIST_SUBDIR =	pecl
REVISION =	0

CATEGORIES =	security

# PHP
PERMIT_PACKAGE =	Yes

WANTLIB += ltdl mcrypt

# 7.2+ only
FLAVORS =	php72 php73
FLAVOR ?=	php72

MODULES =	lang/php/pecl

MODPHP_DO_SAMPLE = mcrypt

LIB_DEPENDS =	devel/libtool,-ltdl \
		security/libmcrypt

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
