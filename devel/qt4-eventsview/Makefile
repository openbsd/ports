# $OpenBSD: Makefile,v 1.4 2009/08/10 06:31:08 kili Exp $

COMMENT=	event viewer for qt4
CATEGORIES=	devel x11

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

SHARED_LIBS=	eventsview	0.0
.for l v in $(SHARED_LIBS)
MAKE_FLAGS+=LIB$l_VERSION=$v
.endfor
DIST_SUBDIR=	qt4-eventsview-$V
V=		0.1
DISTNAME=	57337-eventsview
PKGNAME=	qt4-eventsview-$Vp1
MASTER_SITES=	http://qt-apps.org/CONTENT/content-files/

WRKDIST=	${WRKDIR}/eventsview
MODULES=	x11/qt4

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

LIB_DEPENDS=	glib-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
		lib/qt4/QtGui::x11/qt4

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype iconv intl m png pthread pthread-stubs stdc++ xcb z

SUBST_VARS=	SAMPLE

.include <bsd.port.mk>
