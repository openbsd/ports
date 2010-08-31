# $OpenBSD: Makefile,v 1.7 2010/08/31 08:22:05 jasper Exp $

COMMENT =		K Desktop Environment, toys
DISTNAME =		kdetoys-${VERSION}

LIB_DEPENDS+= 	::x11/kde4/libs \
		::x11/kde4/base-workspace

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm c kde3support kdecore.>=8 kdeui \
	khtml kio kjs knotifyconfig kparts kscreensaver.>=8 lib/qt4/Qt3Support \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg \
	lib/qt4/QtXml m pthread stdc++

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
