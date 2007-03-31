# $OpenBSD: Makefile,v 1.11 2007/03/31 08:58:30 martynas Exp $

COMMENT=	"record what you eat and analyze your meals for nutrient composition"

DISTNAME=	nut-12.4
PKGNAME=	nutdb-12.4
CATEGORIES=	biology
HOMEPAGE=	http://www.lafn.org/~av832/

MAINTAINER=	Jon Trembley <jon@brain-box.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes

ALL_TARGET=     nut

USE_GMAKE=	Yes

.include <bsd.port.mk>
