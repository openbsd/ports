# $OpenBSD: Makefile,v 1.10 2010/10/19 08:13:58 espie Exp $

COMMENT =		K Desktop Environment, accessibility
DISTNAME =		kdeaccessibility-${VERSION}

#SHARED_LIBS +=  kttsd             3.0 # .4.0

LIB_DEPENDS += 		::x11/kde4/libs

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm Xtst c kde3support kdecore kdeui \
	kio lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork \
	lib/qt4/QtSvg lib/qt4/QtXml m phonon.>=5 pthread stdc++

CONFIGURE_ARGS += -DKDE4_KTTSD_ALSA:BOOL=OFF
USE_GROFF =	Yes

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
