# $OpenBSD: Makefile,v 1.9 2015/01/21 14:28:00 sthen Exp $

COMMENT=	internationalization library written in Perl

V=		1.16
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}
REVISION =	2
CATEGORIES=	devel
MODULES=	cpan
CPAN_AUTHOR=	GUIDO

# perl
PERMIT_PACKAGE_CDROM=	Yes

post-install:
	rm -f ${PREFIX}/${P5SITE}/Locale/*.orig

.include <bsd.port.mk>
