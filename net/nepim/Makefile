# $OpenBSD: Makefile,v 1.8 2009/02/16 15:28:58 sthen Exp $

COMMENT=		network pipe meter

DISTNAME=		nepim-0.39
PKGNAME=		${DISTNAME}p0
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
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nepim ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nepim
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/nepim

.include <bsd.port.mk>
