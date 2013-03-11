# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:24 espie Exp $

COMMENT=	internationalization library written in Perl

V=		1.16
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}
REVISION =	2
CATEGORIES=	devel
MODULES=	cpan
USE_GROFF =	Yes
CPAN_AUTHOR=	GUIDO

# perl
PERMIT_PACKAGE_CDROM=	Yes

post-install:
	rm -f ${PREFIX}/${P5SITE}/Locale/*.orig

.include <bsd.port.mk>
