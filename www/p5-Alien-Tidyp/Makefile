# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:49 sthen Exp $

COMMENT=	building, finding and using tidyp library

DISTNAME=	Alien-Tidyp-v1.4.7
PKGNAME=	p5-${DISTNAME:S/v//}
CATEGORIES=	www
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild
CONFIGURE_ENV+= 	TIDYP_DIR=${LOCALBASE}

BUILD_DEPENDS=		devel/p5-File-ShareDir \
			archivers/p5-Archive-Extract \
			www/tidyp

.include <bsd.port.mk>
