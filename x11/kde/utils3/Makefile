# $OpenBSD: Makefile,v 1.59 2009/08/11 08:40:40 ajacoutot Exp $

COMMENT = 		K Desktop Environment, utilities
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeutils-${VERSION}
PKGNAME =		${DISTNAME}p1
MODKDE_VERSION =		3.5.8
SHARED_LIBS +=	khexeditcommon       1.0      # .0.0
SHARED_LIBS +=	kcmlaptop            1.0      # .0.0
SHARED_LIBS +=	kmilo                2.0      # .1.0
SHARED_LIBS +=	kregexpeditorcommon  2.0      # .1.0
SHARED_LIBS +=	ksimcore             2.0      # .1.0

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS =	DCOP,kabc,kdecore.>=6,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		netsnmp::net/net-snmp \
		gmp::devel/gmp \
		python2.5:python->=2.5,<2.6:lang/python/2.5 \
		xmms::audio/xmms \
		gtk,gdk::x11/gtk+


SEPARATE_BUILD =	flavored

WANTLIB =	ICE SM X11 Xext Xrender Xtst art_lgpl_2 c crypto jpeg m \
		png pthread stdc++ util z gmodule intl iconv Xi kvm glib \
		idn Xau Xdmcp fam rpcsvc Xss pthread-stubs xcb


.include <bsd.port.mk>
