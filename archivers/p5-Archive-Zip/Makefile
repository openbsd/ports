# $OpenBSD: Makefile,v 1.3 2002/06/09 05:24:27 wilfried Exp $

COMMENT=	"perl interface to ZIP files"
VERSION=	1.01
DISTNAME=	Archive-Zip-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5
NEED_VERSION=	1.502

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Archive/}

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Compress-Zlib-*:archivers/p5-Compress-Zlib
REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
