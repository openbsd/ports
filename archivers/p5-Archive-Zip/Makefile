# $OpenBSD: Makefile,v 1.1.1.1 2002/05/22 11:00:41 peter Exp $

COMMENT=	"perl interface to ZIP files"
VERSION=	1.01
DISTNAME=	Archive-Zip-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5
NEED_VERSION=	1.502

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Archive

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::archivers/p5-Compress-Zlib

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
