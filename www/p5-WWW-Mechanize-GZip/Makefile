# $OpenBSD: Makefile,v 1.3 2019/05/27 11:41:14 cwen Exp $

COMMENT=	tries to fetch webpages with gzip-compression

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	WWW-Mechanize-GZip-0.14
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	www/p5-WWW-Mechanize

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
