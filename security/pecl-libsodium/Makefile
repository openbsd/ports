# $OpenBSD: Makefile,v 1.9 2018/04/26 15:08:56 sthen Exp $

COMMENT =	low-level encryption extension for PHP

DISTNAME =	libsodium-1.0.6
REVISION =	1
DIST_SUBDIR =	pecl

CATEGORIES =	security

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread sodium

MODULES =	lang/php/pecl
LIB_DEPENDS =	security/libsodium

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
