# $OpenBSD: Makefile,v 1.5 2020/07/03 21:46:06 sthen Exp $

COMMENT=	tries to fetch webpages with gzip-compression

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	WWW-Mechanize-GZip-0.14
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =	www/p5-WWW-Mechanize

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
