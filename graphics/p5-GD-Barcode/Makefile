# $OpenBSD: Makefile,v 1.3 2005/12/21 06:22:27 steven Exp $

COMMENT=	"create barcode image with GD"

DISTNAME=	GD-Barcode-1.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

RUN_DEPENDS=	:p5-GD->=1.18:graphics/p5-GD 
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
