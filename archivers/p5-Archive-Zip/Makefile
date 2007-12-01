# $OpenBSD: Makefile,v 1.15 2007/12/01 13:26:08 steven Exp $

COMMENT=	perl interface to ZIP files

MODULES=	cpan

DISTNAME=	Archive-Zip-1.23

CATEGORIES=	archivers

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::archivers/p5-Compress-Zlib
REGRESS_DEPENDS=:zip-*:archivers/zip \
 		::devel/p5-Test-Pod

.include <bsd.port.mk>
