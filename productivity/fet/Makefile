# $OpenBSD: Makefile,v 1.1.1.1 2007/08/31 09:04:02 jasper Exp $

COMMENT=		automatically create timetables

DISTNAME=		fet-5.2.13
CATEGORIES=		productivity x11

HOMEPAGE=		http://www.lalescu.ro/liviu/fet/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	ICE SM X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender \
		c crypto fontconfig freetype glib-2.0 gthread-2.0 m \
		png pthread ssl stdc++ z

MASTER_SITES=		${HOMEPAGE}/download/ \
			http://timetabling.de/download/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/qt4

LIB_DEPENDS=		Qt3Support,QtGui,QtNetwork,QtSql,QtXml::x11/qt4

USE_X11=		Yes

PORTHOME=		${WRKDIR}

NO_REGRESS=		Yes

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4 -unix fet.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fet ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fet
	${INSTALL_DATA} ${WRKSRC}/doc/algorithm.txt ${PREFIX}/share/doc/fet 
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fet
	${INSTALL_DATA} ${WRKSRC}/sample_inputs/* ${PREFIX}/share/examples/fet

.include <bsd.port.mk>
