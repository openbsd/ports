# $OpenBSD: Makefile,v 1.20 2018/04/26 15:08:56 sthen Exp $

COMMENT =	PHP extension for parsing and working with rfc822/MIME mail

DISTNAME =	mailparse-3.0.2
CATEGORIES =	mail

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

AUTOCONF_VERSION =	2.52
AUTOMAKE_VERSION =	1.4

MODULES =	lang/php/pecl
MODPECL_V =	7

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
