# $OpenBSD: Makefile,v 1.4 2004/12/05 11:52:17 xsa Exp $

COMMENT=	"record what you eat and analyze your meals for nutrient composition"

PKGNAME=	nutdb-10.11
DISTNAME=	nut-10.11
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

ALL_TARGET= nut

USE_GMAKE=	Yes

.include <bsd.port.mk>
