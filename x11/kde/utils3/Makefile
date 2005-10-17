# $OpenBSD: Makefile,v 1.31 2005/10/17 11:28:27 espie Exp $

COMMENT= 		"K Desktop Environment, utilities"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.3
DISTNAME=		kdeutils-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.4

LIB_DEPENDS=	DCOP,kabc,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		netsnmp::net/net-snmp


SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender Xtst art_lgpl_2 c crypto jpeg m \
		png pthread stdc++ util z

.include <bsd.port.mk>
