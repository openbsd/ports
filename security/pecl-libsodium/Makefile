# $OpenBSD: Makefile,v 1.5 2016/04/05 10:54:13 sthen Exp $

COMMENT =	low-level encryption extension for PHP

DISTNAME =	libsodium-1.0.3
DIST_SUBDIR =	pecl

CATEGORIES =	security

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c sodium

MODULES =	lang/php/pecl
LIB_DEPENDS =	security/libsodium

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
