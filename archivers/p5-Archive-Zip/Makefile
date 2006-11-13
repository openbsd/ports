# $OpenBSD: Makefile,v 1.10 2006/11/13 09:43:25 espie Exp $

COMMENT=	"perl interface to ZIP files"

MODULES=	cpan

DISTNAME=	Archive-Zip-1.16
PKGNAME=	p5-${DISTNAME}p0

CATEGORIES=	archivers

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Compress-Zlib-*:archivers/p5-Compress-Zlib
REGRESS_DEPENDS=:zip-*:archivers/zip \
		::devel/p5-Test-Pod

.include <bsd.port.mk>
