# $OpenBSD: Makefile,v 1.6 2013/02/03 13:21:42 zhuk Exp $

COMMENT =	multimedia layer from qt4/kde4
CATEGORIES =	multimedia devel
VERSION =	4.4.2
DISTNAME =	phonon-${VERSION}
EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/4.4.2/}

# LGPL 2.1
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes

# higher than base kde4 to avoid issues

SHARED_LIBS +=		phonon 5.0
SHARED_LIBS +=		phononexperimental 0.0
BUILD_DEPENDS +=	devel/automoc

MODULES =		x11/qt4 devel/cmake

LIB_DEPENDS +=	multimedia/xine-lib

WANTLIB +=  GL glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-0.10 gstbase-0.10 \
	gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 \
	gthread-2.0 lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtOpenGL m stdc++ \
	xine

.include <bsd.port.mk>
