# $OpenBSD: Makefile,v 1.12 2013/03/11 11:10:53 espie Exp $

COMMENT=	visualize and manipulate mathematical models

DISTNAME=	k3dsurf-0.6.2
REVISION =	4
CATEGORIES=	graphics math

HOMEPAGE=	http://k3dsurf.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=k3dsurf/}

WANTLIB=	GL GLU X11 Xext Xmu c m pthread stdc++

MODULES=	x11/qt3
NO_TEST=	Yes

PORTHOME=	${WRKDIR}

# fix to avoid gcc generating a huge uncompilable intermediate assembly
.if ${MACHINE_ARCH} == "hppa"
CXXFLAGS +=             -O0
CONFIGURE_ENV +=        OPENSOURCE_CXXFLAGS="${CXXFLAGS}"
.endif

SUBST_VARS+=	CXX CXXFLAGS

do-configure:
	${SUBST_CMD} ${WRKSRC}/src/src.pro
	cd ${WRKDIST} && ${LOCALBASE}/bin/qmake

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/icon/catenoid_mini_64x64.png \
		${PREFIX}/share/pixmaps/k3dsurf.png
	${INSTALL_PROGRAM} ${WRKSRC}/bin/k3dsurf ${PREFIX}/bin

.include <bsd.port.mk>
