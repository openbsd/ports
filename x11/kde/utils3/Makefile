# $OpenBSD: Makefile,v 1.74 2013/07/08 14:03:30 zhuk Exp $

COMMENT = 		K Desktop Environment, utilities
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeutils-${VERSION}
MODKDE_VERSION =	3.5.8
REVISION =		13

SHARED_LIBS +=	khexeditcommon       1.0      # .0.0
SHARED_LIBS +=	kcmlaptop            1.0      # .0.0
SHARED_LIBS +=	kmilo                2.0      # .1.0
SHARED_LIBS +=	kregexpeditorcommon  2.0      # .1.0
SHARED_LIBS +=	ksimcore             2.0      # .1.0

MODULES =	x11/kde devel/gettext lang/python

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	audio/xmms \
		devel/gmp \
		net/net-snmp \
		x11/kde/libs3 \
		${MODPY_LIB_DEPENDS}

SEPARATE_BUILD =	flavored

WANTLIB =	GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB +=	Xinerama Xmu Xrandr Xrender Xss Xt Xtst Xxf86vm art_lgpl_2 c
WANTLIB +=	crypto drm expat fam fontconfig freetype gdk glib gmodule
WANTLIB +=	gmp gtk idn jpeg knewstuff kvm lcms lib/kde3/DCOP
WANTLIB +=	lib/kde3/kabc lib/kde3/kdecore>=6 lib/kde3/kdefx
WANTLIB +=	lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui lib/kde3/kio
WANTLIB +=	lib/kde3/kparts lib/kde3/kresources lib/kde3/kutils
WANTLIB +=	lib/kde3/kwalletclient lib/kde3/vcard m mng netsnmp png
WANTLIB +=	pthread pthread-stubs stdc++ util xcb xmms z ${MODPY_WANTLIB}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
