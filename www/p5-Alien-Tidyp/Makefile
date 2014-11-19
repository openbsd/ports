# $OpenBSD: Makefile,v 1.4 2014/11/19 00:34:59 sthen Exp $

COMMENT=	building, finding and using tidyp library

DISTNAME=	Alien-Tidyp-v1.4.7
PKGNAME=	p5-${DISTNAME:S/v//}
CATEGORIES=	www
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild
CONFIGURE_ENV+= 	TIDYP_DIR=${LOCALBASE}

BUILD_DEPENDS=		devel/p5-File-ShareDir \
			archivers/p5-Archive-Extract \
			www/tidyp

.include <bsd.port.mk>
