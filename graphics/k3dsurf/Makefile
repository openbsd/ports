# $OpenBSD: Makefile,v 1.6 2009/08/10 06:31:45 kili Exp $

COMMENT=	visualize and manipulate mathematical models

DISTNAME=	k3dsurf-0.6.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	graphics math

HOMEPAGE=	http://k3dsurf.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=k3dsurf/}

WANTLIB=	GL GLU X11 Xext Xmu c m pthread pthread-stubs stdc++ xcb

MODULES=	x11/qt3
USE_X11=	Yes
NO_REGRESS=	Yes

PORTHOME=	${WRKDIR}

do-configure:
	@perl -pi -e 's,!!CXXFLAGS!!,${CXXFLAGS},g;' \
		-e 's,!!CXX!!,${CXX},g' \
		 ${WRKSRC}/src/src.pro
	cd ${WRKDIST} && ${LOCALBASE}/bin/qmake

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/icon/catenoid_mini_64x64.png \
		${PREFIX}/share/pixmaps/k3dsurf.png
	${INSTALL_PROGRAM} ${WRKSRC}/bin/k3dsurf ${PREFIX}/bin

.include <bsd.port.mk>
