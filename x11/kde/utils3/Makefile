# $OpenBSD: Makefile,v 1.79 2015/05/05 17:00:20 sthen Exp $

COMMENT = 		K Desktop Environment, utilities
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeutils-${VERSION}
MODKDE_VERSION =	3.5.8
REVISION =		18

SHARED_LIBS +=	khexeditcommon       1.0      # .0.0
SHARED_LIBS +=	kcmlaptop            1.0      # .0.0
SHARED_LIBS +=	kmilo                2.0      # .1.0
SHARED_LIBS +=	kregexpeditorcommon  2.0      # .1.0
SHARED_LIBS +=	ksimcore             2.0      # .1.0

MODULES =	x11/kde devel/gettext lang/python

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/xmms \
		devel/gmp \
		net/net-snmp \
		x11/kde/libs3 \
		${MODPY_LIB_DEPENDS}

SEPARATE_BUILD =	flavored

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xss Xt Xtst Xxf86vm
WANTLIB += art_lgpl_2 c crypto drm expat fam fontconfig freetype gdk
WANTLIB += glapi glib gmodule gmp gtk idn jpeg knewstuff kvm lcms
WANTLIB += lib/kde3/DCOP lib/kde3/kabc lib/kde3/kdecore>=6
WANTLIB += lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu
WANTLIB += lib/kde3/kdeui lib/kde3/kio lib/kde3/kparts
WANTLIB += lib/kde3/kresources lib/kde3/kutils lib/kde3/kwalletclient
WANTLIB += lib/kde3/vcard m mng netsnmp png pthread pthread-stubs stdc++
WANTLIB += util xcb xcb-dri2 xcb-glx xmms z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE_HTML_SUBDIR}/en/common

.include <bsd.port.mk>
