# $OpenBSD: Makefile,v 1.3 2013/03/11 11:44:43 espie Exp $

COMMENT=	building, finding and using tidyp librar

DISTNAME=	Alien-Tidyp-v1.4.6
PKGNAME=	p5-${DISTNAME:S/v//}
CATEGORIES=	www
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild
CONFIGURE_ENV+= 	TIDYP_DIR=${LOCALBASE}

BUILD_DEPENDS=		devel/p5-File-ShareDir \
			www/tidyp

.include <bsd.port.mk>
