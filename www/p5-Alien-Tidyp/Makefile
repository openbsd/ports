# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:55 sthen Exp $

COMMENT=	building, finding and using tidyp library

DISTNAME=	Alien-Tidyp-v1.4.7
PKGNAME=	p5-${DISTNAME:S/v//}
CATEGORIES=	www
MODULES=	cpan
PKG_ARCH=	*
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild
CONFIGURE_ENV+= 	TIDYP_DIR=${LOCALBASE}

BUILD_DEPENDS=		devel/p5-File-ShareDir \
			archivers/p5-Archive-Extract \
			www/tidyp

.include <bsd.port.mk>
