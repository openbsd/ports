# $OpenBSD: Makefile,v 1.6 2003/06/04 22:16:22 jolan Exp $

COMMENT=	"perl interface to tar archives"
VERSION=	0.22
DISTNAME=	Archive-Tar-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Archive/}

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Compress-Zlib-*:archivers/p5-Compress-Zlib

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
