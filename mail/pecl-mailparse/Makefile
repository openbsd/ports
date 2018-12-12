# $OpenBSD: Makefile,v 1.22 2018/12/12 23:46:18 sthen Exp $

COMMENT =	PHP extension for parsing and working with rfc822/MIME mail

DISTNAME =	mailparse-3.0.2
CATEGORIES =	mail
REVISION =	0

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

AUTOCONF_VERSION =	2.52
AUTOMAKE_VERSION =	1.4

MODULES =	lang/php/pecl

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
