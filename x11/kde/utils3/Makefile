# $OpenBSD: Makefile,v 1.70 2012/06/15 08:30:23 ajacoutot Exp $

COMMENT = 		K Desktop Environment, utilities
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeutils-${VERSION}
MODKDE_VERSION =		3.5.8
SHARED_LIBS +=	khexeditcommon       1.0      # .0.0
SHARED_LIBS +=	kcmlaptop            1.0      # .0.0
SHARED_LIBS +=	kmilo                2.0      # .1.0
SHARED_LIBS +=	kregexpeditorcommon  2.0      # .1.0
SHARED_LIBS +=	ksimcore             2.0      # .1.0

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS =	x11/kde/libs3 \
		net/net-snmp \
		devel/gmp \
		python->=2.5,<2.6:lang/python/2.5 \
		audio/xmms \
		x11/gtk+


SEPARATE_BUILD =	flavored

REVISION = 10
WANTLIB = ICE SM X11 Xau Xdmcp Xext Xi Xrender Xss Xtst art_lgpl_2 c crypto \
	fam gdk glib gmodule gmp gtk idn jpeg kvm lib/kde3/DCOP lib/kde3/kabc \
	lib/kde3/kdecore>=6 lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu \
	lib/kde3/kdeui lib/kde3/kio lib/kde3/kparts lib/kde3/kresources \
	lib/kde3/kutils lib/kde3/kwalletclient lib/kde3/vcard m netsnmp png \
	pthread pthread-stubs python2.5 stdc++ util xcb xmms z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common
	@${post_install_libs}

.include <bsd.port.mk>
