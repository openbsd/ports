# $OpenBSD: Makefile,v 1.16 2006/12/06 17:55:52 jasper Exp $

COMMENT=	"module for graph plotting"

VERSION=        1.43 
DISTNAME=       GDGraph-${VERSION}
PKGNAME=        p5-GD-Graph-${VERSION}p0
CATEGORIES=     graphics

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

RUN_DEPENDS=	:p5-GD->=1.18:graphics/p5-GD \
		:p5-GD-TextUtil-*:graphics/p5-GD-TextUtil
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

.include <bsd.port.mk>
