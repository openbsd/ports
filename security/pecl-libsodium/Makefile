# $OpenBSD: Makefile,v 1.1.1.1 2015/11/14 16:14:23 sthen Exp $

COMMENT =	low-level encryption extension for PHP

DISTNAME =	libsodium-1.0.2
DIST_SUBDIR =	pecl

CATEGORIES =	security

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += sodium

MODULES =	lang/php/pecl
LIB_DEPENDS =	security/libsodium

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
