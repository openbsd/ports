# $OpenBSD: Makefile,v 1.10 2010/06/22 23:31:55 espie Exp $

COMMENT =		K Desktop Environment, base
DISTNAME =		kdebase-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=	konq                 8.0      # .6.0
SHARED_LIBS +=	konqsidebarplugin    5.0      # .4.0
SHARED_LIBS +=	dolphinprivate       0.0      # .1.0
SHARED_LIBS +=	konquerorprivate     0.0      # .4.0

BUILD_DEPENDS +=	::x11/kde4/automoc
LIB_DEPENDS +=	kdecore.>=8,kde3support,kdesu,kdeui,kfile,khtml,kio,kjs,knotifyconfig,kparts,kpty,ktexteditor,kutils,solid,knewstuff3,plasma,nepomuk,nepomukquery::x11/kde4/libs \
	phonon.>=5::multimedia/phonon \
	qimageblitz::x11/kde4/qimageblitz

WANTLIB += ICE SM X11 Xau Xdmcp
WANTLIB += Xext Xft Xpm Xrender
WANTLIB += Xt c m pthread
WANTLIB += stdc++ z soprano
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml
WANTLIB += glib-2.0
WANTLIB += GL GLU

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
