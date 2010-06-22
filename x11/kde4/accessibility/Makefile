# $OpenBSD: Makefile,v 1.7 2010/06/22 23:31:55 espie Exp $

COMMENT =		K Desktop Environment, accessibility
DISTNAME =		kdeaccessibility-${VERSION}
PKGNAME =		${DISTNAME}

#SHARED_LIBS +=  kttsd             3.0 # .4.0

LIB_DEPENDS += 	kdecore.>=8,kde3support,kdeui,kio::x11/kde4/libs

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm
WANTLIB += Xtst c m pthread
WANTLIB += stdc++ phonon
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork

CONFIGURE_ARGS += -DKDE4_KTTSD_ALSA:BOOL=OFF

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
