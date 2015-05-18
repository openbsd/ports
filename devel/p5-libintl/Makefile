# $OpenBSD: Makefile,v 1.10 2015/05/18 11:29:37 jasper Exp $

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

pre-configure:
	rm ${WRKSRC}/lib/Locale/*.orig

.include <bsd.port.mk>
