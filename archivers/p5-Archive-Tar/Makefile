# $OpenBSD: Makefile,v 1.5 2003/05/24 02:55:16 jolan Exp $

COMMENT=	"perl interface to tar archives"
VERSION=	0.22
DISTNAME=	Archive-Tar-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Archive/}

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Compress-Zlib-*:archivers/p5-Compress-Zlib

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
