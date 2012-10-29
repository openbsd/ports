# $OpenBSD: Makefile,v 1.12 2012/10/29 15:19:03 espie Exp $

COMMENT=		library to compress the standard X protocol

DASHVERSION=		2
DISTNAME=		nxcomp-${MAJOR_VERSION}-${DASHVERSION}
PKGNAME=		nxcomp-${MAJOR_VERSION}.${DASHVERSION}
SHARED_LIBS=		Xcomp	1.0

WANTLIB += jpeg m png stdc++ z

LIB_DEPENDS=		graphics/jpeg \
			graphics/png

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			LIBXcomp_VERSION=${LIBXcomp_VERSION} \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"

WRKDIST=		${WRKDIR}/nxcomp
# requires the includes
USE_X11 =		Yes

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libXcomp.so.${LIBXcomp_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKBUILD}/libXcomp.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/nx
	${INSTALL_DATA} ${WRKBUILD}/NX*.h ${PREFIX}/include/nx
	${INSTALL_DATA} ${WRKBUILD}/MD5.h ${PREFIX}/include/nx

.include <bsd.port.mk>
