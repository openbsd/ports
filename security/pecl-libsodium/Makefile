# $OpenBSD: Makefile,v 1.21 2019/09/11 20:57:43 sthen Exp $

COMMENT =	low-level encryption extension for PHP

DISTNAME =	libsodium-2.0.22
DIST_SUBDIR =	pecl

CATEGORIES =	security

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE =	Yes

WANTLIB += pthread sodium

# only built for 7.1; 7.2+ include sodium functions in php core
MODULES =	lang/php/pecl

MODPHP_DO_SAMPLE = sodium

LIB_DEPENDS =	security/libsodium

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
