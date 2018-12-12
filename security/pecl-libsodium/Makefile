# $OpenBSD: Makefile,v 1.16 2018/12/12 23:46:18 sthen Exp $

COMMENT =	low-level encryption extension for PHP

DISTNAME =	libsodium-2.0.15
REVISION =	1
DIST_SUBDIR =	pecl

CATEGORIES =	security

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread sodium

MODULES =	lang/php/pecl

MODPHP_DO_SAMPLE = sodium

LIB_DEPENDS =	security/libsodium

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
