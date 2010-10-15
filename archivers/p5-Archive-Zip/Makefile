# $OpenBSD: Makefile,v 1.20 2010/10/15 18:50:23 sthen Exp $

COMMENT=	perl interface to ZIP files

MODULES=	cpan

DISTNAME=	Archive-Zip-1.30
REVISION=	0

CATEGORIES=	archivers

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=:zip-*:archivers/zip \
 		::devel/p5-Test-Pod

.include <bsd.port.mk>
