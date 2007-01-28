# $OpenBSD: Makefile,v 1.21 2007/01/28 13:18:50 espie Exp $

COMMENT= 		"K Desktop Environment, admin tools"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.6
DISTNAME=		kdeadmin-${VERSION}
MODKDE_VERSION?=	3.5.3

LIB_DEPENDS=	DCOP,kdecore.>=6,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kntlm::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg kabc kresources \
		kwalletclient m png pthread stdc++ util vcard z iconv idn

USE_X11=	Yes

.include <bsd.port.mk>
