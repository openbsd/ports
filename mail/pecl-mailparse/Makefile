# $OpenBSD: Makefile,v 1.25 2019/06/03 16:06:52 sthen Exp $

COMMENT =	PHP extension for parsing and working with rfc822/MIME mail

DISTNAME =	mailparse-3.0.3
CATEGORIES =	mail

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE =	Yes

WANTLIB += c

MODULES =	lang/php/pecl

# not 7.3 yet
FLAVORS =	php71 php72

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
