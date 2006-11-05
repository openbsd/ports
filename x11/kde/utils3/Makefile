# $OpenBSD: Makefile,v 1.44 2006/11/05 13:02:30 espie Exp $

COMMENT= 		"K Desktop Environment, utilities"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.5
DISTNAME=		kdeutils-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5.3
SHARED_LIBS +=	khexeditcommon       1.0      # .0.0
SHARED_LIBS +=	kcmlaptop            1.0      # .0.0
SHARED_LIBS +=	kmilo                2.0      # .1.0
SHARED_LIBS +=	kregexpeditorcommon  2.0      # .1.0
SHARED_LIBS +=	ksimcore             2.0      # .1.0

LIB_DEPENDS=	DCOP,kabc,kdecore.>=6,kdefx,kdeprint,kdesu,kdeui,kio,knewstuff,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		netsnmp::net/net-snmp \
		gmp::devel/gmp \
		python2.4:python-2.4.*:lang/python/2.4 \
		xmms::audio/xmms \
		gtk,gdk::x11/gtk+


SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender Xtst art_lgpl_2 c crypto jpeg m \
		png pthread stdc++ util z gmodule intl iconv Xi kvm glib \
		idn

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
.include <bsd.port.mk>
