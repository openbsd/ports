# $OpenBSD: Makefile,v 1.4 2002/11/21 16:51:22 naddy Exp $

COMMENT=	"perl interface to ZIP files"
DISTNAME=	Archive-Zip-1.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Archive/}

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Compress-Zlib-*:archivers/p5-Compress-Zlib
REGRESS_DEPENDS=${RUN_DEPENDS} \
		:zip-*:archivers/zip

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
