COMMENT=	nsf (Nintendo sound) file player

DISTNAME=	nosefart-2.3-mls
PKGNAME=	nosefart-2.3
REVISION=	2
CATEGORIES=	audio
HOMEPAGE=	https://nosefart.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=nosefart/}

EXTRACT_SUFX=	.tar.bz2
NO_TEST=	yes

USE_GMAKE=	yes
WANTLIB=	m c sndio

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKDIST}/nsfobj/nosefart ${PREFIX}/bin/


.include <bsd.port.mk>
