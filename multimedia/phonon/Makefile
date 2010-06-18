# $OpenBSD: Makefile,v 1.1.1.1 2010/06/18 12:53:38 espie Exp $

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

MODULES =		devel/cmake
CONFIGURE_STYLE = 	cmake

MODULES = x11/qt4

LIB_DEPENDS +=	xine::multimedia/xine-lib
WANTLIB += 	GL glib-2.0 gmodule-2.0 gthread-2.0 gobject-2.0
WANTLIB +=	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtOpenGL
WANTLIB +=	gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB +=	gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB +=	m stdc++

.include <bsd.port.mk>
