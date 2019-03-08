# $OpenBSD: Makefile,v 1.23 2019/03/08 17:02:44 sthen Exp $

COMMENT =	PHP extension for parsing and working with rfc822/MIME mail

DISTNAME =	mailparse-3.0.2
CATEGORIES =	mail
REVISION =	1

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =	lang/php/pecl

# not 7.3 yet
FLAVORS =	php71 php72

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
