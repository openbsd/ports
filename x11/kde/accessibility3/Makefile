# $OpenBSD: Makefile,v 1.9 2005/03/29 21:18:34 espie Exp $

COMMENT= 		"X11 toolkit, accessibility aids"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.0
DISTNAME=		kdeaccessibility-${VERSION}
MODKDE_VERSION?=	3.4

LIB_DEPENDS=	kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xrender Xtst art_lgpl_2 c jpeg kwalletclient \
		m png pthread stdc++ util z

.include <bsd.port.mk>
