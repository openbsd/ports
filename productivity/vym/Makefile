# $OpenBSD: Makefile,v 1.1.1.1 2007/07/07 17:59:05 ajacoutot Exp $

COMMENT=	generate and manipulate maps of your thoughts

DISTNAME=	vym-1.8.1
CATEGORIES=	productivity x11

HOMEPAGE=	http://www.insilmaril.de/vym/

# modified GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vym/}

WANTLIB=	X11 Xext c m pthread stdc++

MODULES=	x11/qt3

USE_X11=	Yes
PORTHOME=	${WRKDIR}
NO_REGRESS=	Yes

SHARE_DIRS= flags icons scripts styles

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/mainwindow.cpp \
		${WRKSRC}/exportxhtmldialog.ui.h

do-configure:
	@echo "QMAKE_CXXFLAGS_RELEASE=${CXXFLAGS}" \
		>> ${WRKSRC}/vym.pro
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/qmake vym.pro

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
