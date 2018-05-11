# $OpenBSD: Makefile,v 1.2 2018/05/11 19:44:37 sthen Exp $

COMMENT =	PHP extension for parsing and working with rfc822/MIME mail

DISTNAME =	mailparse-2.1.6
CATEGORIES =	mail
REVISION =	2
PORTROACH =	limit:^2

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

AUTOCONF_VERSION =	2.52
AUTOMAKE_VERSION =	1.4

MODULES =	lang/php/pecl
MODPECL_V =	5.6

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
