# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:58 sthen Exp $

COMMENT=	tries to fetch webpages with gzip-compression

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	WWW-Mechanize-GZip-0.14
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =	www/p5-WWW-Mechanize

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
