# $OpenBSD: Makefile,v 1.6 2002/05/11 00:31:22 espie Exp $

NOT_FOR_ARCHS=	alpha

COMMENT=		"Qt-based 2D CAD system"

PKGNAME=		${DISTNAME:S/-src//}
DISTNAME=		qcad-1.4.7-src
CATEGORIES=     	cad x11
NEED_VERSION=		1.497

HOMEPAGE=		http://www.qcad.org/

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${HOMEPAGE}archives/

MODULES=	qt2

MAKE_FLAGS= \
	CC='${CXX}' \
	CFLAGS='${CXXFLAGS} -DPREFIX=\"${PREFIX}\"' \
	INCPATH='-I${LOCALBASE}/include -I${MODQT_INCDIR}' \
	LINK='${CXX}' \
	LFLAGS='' \
	LIBS='-L${MODQT_LIBDIR} -L${LOCALBASE}/lib -lqt -L${X11BASE}/lib -lX11' 

NO_REGRESS=		Yes

DOCS=			AUTHORS COPYING INSTALL MANIFEST README TODO

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
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/qcad

.include <bsd.port.mk>
