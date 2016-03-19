# $OpenBSD: Makefile,v 1.4 2016/03/19 21:18:38 naddy Exp $

COMMENT =	low-level encryption extension for PHP

DISTNAME =	libsodium-1.0.2
DIST_SUBDIR =	pecl
REVISION =	1

CATEGORIES =	security

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c sodium

MODULES =	lang/php/pecl
LIB_DEPENDS =	security/libsodium

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
