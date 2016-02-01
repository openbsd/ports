# $OpenBSD: Makefile,v 1.2 2016/02/01 21:55:38 sthen Exp $

COMMENT =	low-level encryption extension for PHP

DISTNAME =	libsodium-1.0.2
DIST_SUBDIR =	pecl
REVISION =	0

CATEGORIES =	security

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += sodium

MODULES =	lang/php/pecl
LIB_DEPENDS =	security/libsodium

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
