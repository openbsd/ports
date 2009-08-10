# $OpenBSD: Makefile,v 1.4 2009/08/10 06:34:09 kili Exp $

COMMENT=		automatically create timetables

DISTNAME=		fet-5.9.4
PKGNAME=		${DISTNAME}p0
CATEGORIES=		productivity x11

HOMEPAGE=		http://www.lalescu.ro/liviu/fet/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0 m png pthread
WANTLIB += pthread-stubs stdc++ xcb z

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
	${INSTALL_DATA} ${WRKSRC}/doc/algorithm-explanation/* \
		${PREFIX}/share/doc/fet 
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fet
	cd ${WRKSRC}/sample_inputs/ && umask 022 && pax -rw . \
		${PREFIX}/share/examples/fet

.include <bsd.port.mk>
