# $OpenBSD: Makefile,v 1.6 2009/08/10 06:34:09 kili Exp $

COMMENT=	generate and manipulate maps of your thoughts

DISTNAME=	vym-1.10.0
PKGNAME=	${DISTNAME}p3
CATEGORIES=	productivity x11

HOMEPAGE=	http://www.insilmaril.de/vym/

# modified GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vym/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype glib-2.0 gthread-2.0 m png pthread stdc++
WANTLIB += z expat gobject-2.0 pthread-stubs xcb

MODULES=	devel/gettext \
		x11/qt4

RUN_DEPENDS=	::archivers/zip
LIB_DEPENDS=	Qt3Support,QtGui,QtNetwork,QtSql,QtXml::x11/qt4

USE_X11=	Yes
PORTHOME=	${WRKDIR}
NO_REGRESS=	Yes

SHARE_DIRS=	flags icons scripts styles

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/mainwindow.cpp \
		${WRKSRC}/exportxhtmldialog.cpp

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
