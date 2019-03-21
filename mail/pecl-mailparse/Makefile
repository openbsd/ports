# $OpenBSD: Makefile,v 1.24 2019/03/21 13:19:33 sthen Exp $

COMMENT =	PHP extension for parsing and working with rfc822/MIME mail

DISTNAME =	mailparse-3.0.3
CATEGORIES =	mail

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =	lang/php/pecl

# not 7.3 yet
FLAVORS =	php71 php72

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
