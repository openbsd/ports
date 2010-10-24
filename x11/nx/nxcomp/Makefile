# $OpenBSD: Makefile,v 1.5 2010/10/24 21:15:33 ajacoutot Exp $

COMMENT=		library to compress the standard X protocol

DASHVERSION=		4
DISTNAME=		nxcomp-${MAJOR_VERSION}-${DASHVERSION}
PKGNAME=		nxcomp-${MAJOR_VERSION}.${DASHVERSION}
SHARED_LIBS=		Xcomp	0.0

WANTLIB=		z jpeg png

LIB_DEPENDS=		::graphics/jpeg \
			::graphics/png

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			LIBXcomp_VERSION=${LIBXcomp_VERSION} \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"

WRKDIST=		${WRKDIR}/nxcomp


do-install:
	${INSTALL_DATA} ${WRKBUILD}/libXcomp.so.${LIBXcomp_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKBUILD}/libXcomp.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/nx
	${INSTALL_DATA} ${WRKBUILD}/NX*.h ${PREFIX}/include/nx
	${INSTALL_DATA} ${WRKBUILD}/MD5.h ${PREFIX}/include/nx

.include <bsd.port.mk>
