# $OpenBSD: Makefile,v 1.2 2019/03/08 17:02:44 sthen Exp $

COMMENT =	PHP bindings for the libmcrypt library

DISTNAME =	mcrypt-1.0.2
DIST_SUBDIR =	pecl

CATEGORIES =	security

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM =	Yes

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
