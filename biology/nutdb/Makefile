# $OpenBSD: Makefile,v 1.10 2007/02/02 14:32:52 jasper Exp $

COMMENT=	"record what you eat and analyze your meals for nutrient composition"

DISTNAME=	nut-12.3
PKGNAME=	nutdb-12.3
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
