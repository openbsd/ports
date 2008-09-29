# $OpenBSD: Makefile,v 1.17 2008/09/29 18:34:23 simon Exp $

COMMENT=	perl interface to ZIP files

MODULES=	cpan

DISTNAME=	Archive-Zip-1.24
PKGNAME=	p5-${DISTNAME}p0

CATEGORIES=	archivers

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=:zip-*:archivers/zip \
 		::devel/p5-Test-Pod

.include <bsd.port.mk>
