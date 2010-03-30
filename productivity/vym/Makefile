# $OpenBSD: Makefile,v 1.7 2010/03/30 19:21:28 jasper Exp $

COMMENT=	generate and manipulate maps of your thoughts

DISTNAME=	vym-1.12.7
CATEGORIES=	productivity x11

HOMEPAGE=	http://www.insilmaril.de/vym/

# modified GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vym/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0 m png pthread
WANTLIB += stdc++ z

MODULES=	devel/gettext \
		x11/qt4

RUN_DEPENDS=	::archivers/zip
LIB_DEPENDS=	Qt3Support,QtGui,QtNetwork,QtSql,QtXml::x11/qt4

USE_X11=	Yes
PORTHOME=	${WRKDIR}
NO_REGRESS=	Yes

SHARE_DIRS=	flags icons scripts styles

pre-configure:
	${SUBST_CMD} ${WRKSRC}/mainwindow.cpp ${WRKSRC}/main.cpp

do-configure:
	@echo "QMAKE_CXXFLAGS_RELEASE=${CXXFLAGS}" \
		>> ${WRKSRC}/vym.pro
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/qmake4 vym.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vym ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vym/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vym/
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/vym/
	${INSTALL_DATA} ${WRKSRC}/demos/* ${PREFIX}/share/examples/vym/
.for i in ${SHARE_DIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/vym/${i}
	find ${WRKSRC}/${i}/ -type f -exec \
		${INSTALL_DATA} {} ${PREFIX}/share/vym/${i} \;
.endfor

.include <bsd.port.mk>
