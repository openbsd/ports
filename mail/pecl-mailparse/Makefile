# $OpenBSD: Makefile,v 1.27 2019/12/11 16:08:29 sthen Exp $

COMMENT =	PHP extension for parsing and working with rfc822/MIME mail

DISTNAME =	mailparse-3.0.3
REVISION=	0
CATEGORIES =	mail

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE =	Yes

WANTLIB += c

MODULES =	lang/php/pecl

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
