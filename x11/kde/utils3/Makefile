# $OpenBSD: Makefile,v 1.25 2004/12/16 07:25:26 alek Exp $

COMMENT= 		"K Desktop Environment, utilities"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.2
DISTNAME=		kdeutils-${VERSION}
MODKDE_VERSION=		3.3.0

LIB_DEPENDS=	DCOP,kabc,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		konq::x11/kde/base3

SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender Xtst art_lgpl_2 c crypto jpeg m \
		netsnmp png pthread stdc++ util z

.include <bsd.port.mk>
