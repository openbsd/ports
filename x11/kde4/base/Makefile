# $OpenBSD: Makefile,v 1.15 2013/02/03 13:21:42 zhuk Exp $

COMMENT =		K Desktop Environment, base
DISTNAME =		kdebase-${VERSION}

SHARED_LIBS +=	konq                 8.0      # .6.0
SHARED_LIBS +=	konqsidebarplugin    5.0      # .4.0
SHARED_LIBS +=	dolphinprivate       0.0      # .1.0
SHARED_LIBS +=	konquerorprivate     0.0      # .4.0

USE_GROFF =	Yes
BUILD_DEPENDS +=	devel/automoc
LIB_DEPENDS +=		x11/kde4/libs \
			multimedia/phonon \
			x11/kde4/qimageblitz

WANTLIB += GL GLU ICE SM X11 Xau Xdmcp Xext Xft Xpm Xrender Xt c glib-2.0 \
	kde3support kdecore>=8 kdesu kdeui kfile khtml kio kjs knewstuff3 \
	knotifyconfig kparts kpty ktexteditor kutils lib/qt4/Qt3Support \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg \
	lib/qt4/QtXml m nepomuk nepomukquery phonon>=5 plasma pthread \
	qimageblitz solid soprano stdc++ z

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
