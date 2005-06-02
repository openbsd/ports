# $OpenBSD: Makefile,v 1.11 2005/06/02 14:01:25 espie Exp $

COMMENT= 		"K Desktop Environment, admin tools"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.1
DISTNAME=		kdeadmin-${VERSION}
MODKDE_VERSION?=	3.4

LIB_DEPENDS=	DCOP,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg kabc kresources \
		kwalletclient m png pthread stdc++ util vcard z

.include <bsd.port.mk>
