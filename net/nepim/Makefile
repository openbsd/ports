# $OpenBSD: Makefile,v 1.11 2010/07/12 22:07:39 sthen Exp $

COMMENT=		network pipe meter

DISTNAME=		nepim-0.53
REVISION=		0
CATEGORIES=		net sysutils

HOMEPAGE=		http://www.nongnu.org/nepim/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= c

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=nepim/}

LIB_DEPENDS=		oop.>=4::devel/liboop

USE_GMAKE=		Yes

NO_REGRESS=		Yes

WRKSRC=         	${WRKDIST}/src
ALL_TARGET=		default

do-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nepim ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nepim
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/nepim

.include <bsd.port.mk>
