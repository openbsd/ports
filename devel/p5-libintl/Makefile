# $OpenBSD: Makefile,v 1.5 2010/10/18 17:48:10 espie Exp $

COMMENT=	internationalization library written in Perl

V=		1.16
DISTNAME=	libintl-perl-${V}
PKGNAME=	p5-libintl-${V}p1
CATEGORIES=	devel
MODULES=	cpan
USE_GROFF =	Yes
CPAN_AUTHOR=	GUIDO

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-install:
	rm -f ${PREFIX}/${P5SITE}/Locale/*.orig

.include <bsd.port.mk>
