# $OpenBSD: Makefile,v 1.7 2002/05/17 18:38:55 naddy Exp $

COMMENT=		"Qt-based 2D CAD system"

PKGNAME=		${DISTNAME:S/-src//}
DISTNAME=		qcad-1.4.7-src
CATEGORIES=     	cad x11
NEED_VERSION=		1.528

HOMEPAGE=		http://www.qcad.org/

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${HOMEPAGE}archives/

MODULES=	qt3

MAKE_FLAGS= \
	CC='${CXX}' \
	CFLAGS='-Wall ${CXXFLAGS} -DPREFIX=\"${PREFIX}\"' \
	INCPATH='-I${MODQT_INCDIR}' \
	LINK='${CXX}' \
	LFLAGS='' \
	LIBS='-L${MODQT_LIBDIR} -L${LOCALBASE}/lib -lqt -L${X11BASE}/lib -lX11' 

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/qcad ${PREFIX}/bin
.for dir in cur fonts hatches messages examples xpm
	${INSTALL_DATA_DIR} ${PREFIX}/share/qcad/${dir}
	${INSTALL_DATA} ${WRKSRC}/${dir}/* ${PREFIX}/share/qcad/${dir}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/qcad/libraries
	cd ${WRKSRC}/libraries; cp -R * ${PREFIX}/share/qcad/libraries 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qcad
	cd ${WRKSRC}/doc; cp -R * ${PREFIX}/share/doc/qcad 

.include <bsd.port.mk>
