# $OpenBSD: Makefile,v 1.2 2002/05/22 23:33:42 naddy Exp $

COMMENT=	"perl interface to tar archives"
VERSION=	0.22
DISTNAME=	Archive-Tar-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5
NEED_VERSION=	1.502

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Archive/}

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::archivers/p5-Compress-Zlib

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
