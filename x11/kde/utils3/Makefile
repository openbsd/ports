# $OpenBSD: Makefile,v 1.34 2006/01/06 09:28:32 espie Exp $

COMMENT= 		"K Desktop Environment, utilities"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.0
DISTNAME=		kdeutils-${VERSION}
PKGNAME=		${DISTNAME}p1
MODKDE_VERSION=		3.5
SHARED_LIBS=		kcmlaptop		0.0 \
			khexeditcommon		0.0 \
			kmilo			1.0 \
			kregexpeditorcommon	1.0 \
			ksimcore		1.0

LIB_DEPENDS=	DCOP,kabc,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,knewstuff,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		netsnmp::net/net-snmp \
		gmp::devel/gmp \
		python2.4.0.0:python-2.4.*:lang/python/2.4 \
		xmms::audio/xmms \
		gtk,gdk::x11/gtk+


SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender Xtst art_lgpl_2 c crypto jpeg m \
		png pthread stdc++ util z gmodule intl iconv Xi kvm glib

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
.include <bsd.port.mk>
