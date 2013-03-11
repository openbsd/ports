# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:27 espie Exp $

BROKEN=		does not work with Qt >= 4.6

COMMENT=	event viewer for qt4
CATEGORIES=	devel x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes

SHARED_LIBS=	eventsview	0.0
.for l v in $(SHARED_LIBS)
MAKE_FLAGS+=LIB$l_VERSION=$v
.endfor
DIST_SUBDIR=	qt4-eventsview-$V
V=		0.1
DISTNAME=	57337-eventsview
PKGNAME=	qt4-eventsview-$V
REVISION =	4
MASTER_SITES=	http://qt-apps.org/CONTENT/content-files/

WRKDIST=	${WRKDIR}/eventsview
MODULES=	x11/qt4 \
		devel/gettext

do-configure:
	cd ${WRKDIST} && env -i ${CONFIGURE_ENV} qmake4
	cd ${WRKDIST}/test && ln -sf ../lib/eventsview.h


SAMPLE=	${PREFIX}/share/examples/eventsview
do-install:
	${INSTALL_DATA} ${WRKBUILD}/lib/libeventsview.so.${LIBeventsview_VERSION} ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/X11/qt4
	${INSTALL_DATA} ${WRKBUILD}/lib/eventsview.h ${PREFIX}/include/X11/qt4
	${INSTALL_DATA_DIR} ${SAMPLE}
	${INSTALL_DATA} ${WRKBUILD}/test/{Makefile,main.cpp} ${SAMPLE}
	${INSTALL_PROGRAM} ${WRKBUILD}/test/test ${SAMPLE}

LIB_DEPENDS=	devel/glib2

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype m png pthread pthread-stubs stdc++ xcb z
WANTLIB += glib-2.0 gobject-2.0 gthread-2.0 lib/qt4/QtGui

SUBST_VARS=	SAMPLE

.include <bsd.port.mk>
