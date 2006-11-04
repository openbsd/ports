# $OpenBSD: Makefile,v 1.12 2006/11/04 19:19:15 kili Exp $

COMMENT=		"Qt-based 2D CAD system"

DISTNAME=		qcad-1.5.4
DISTFILES=		${DISTNAME}-src.tar.gz
CATEGORIES=     	cad x11

HOMEPAGE=		http://www.qcad.org/

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		X11 c m pthread stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=qcad/}

MODULES=	x11/qt3
MODQT_MT=	Yes

MAKE_FLAGS= \
	CXX='${CXX}' \
	CXXFLAGS='${CXXFLAGS} -pthread -Wall -DQT_NO_DEBUG -DDATADIR=\"${PREFIX}/share\"' \
	INCPATH='-I${MODQT_INCDIR}' \
	LINK='${CXX}' \
	LFLAGS='' \
	LIBS='-pthread -L${MODQT_LIBDIR} -L${LOCALBASE}/lib -lqt-mt -L${X11BASE}/lib -lX11' \
	AR='ar cq'

ALL_TARGET=		qcad
NO_REGRESS=		Yes

do-install:
	chmod ${DIRMODE} ${WRKSRC}/libraries/mechanical/screws/chc
	${INSTALL_PROGRAM} ${WRKBUILD}/qcad ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qcad
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/qcad
.for dir in cur fonts hatches messages xpm
	${INSTALL_DATA_DIR} ${PREFIX}/share/qcad/${dir}
	${INSTALL_DATA} ${WRKSRC}/${dir}/* ${PREFIX}/share/qcad/${dir}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/qcad/libraries
	cd ${WRKSRC}/libraries; cp -R * ${PREFIX}/share/qcad/libraries 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qcad
	cd ${WRKSRC}/doc; cp -R * ${PREFIX}/share/doc/qcad 

.include <bsd.port.mk>
