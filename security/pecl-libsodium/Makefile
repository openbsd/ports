# $OpenBSD: Makefile,v 1.15 2018/12/11 12:33:26 sthen Exp $

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
MODPECL_V =	7

MODPHP_DO_SAMPLE = sodium

LIB_DEPENDS =	security/libsodium

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
