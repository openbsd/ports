# $OpenBSD: Makefile,v 1.8 2004/12/16 07:25:25 alek Exp $

COMMENT= 		"X11 toolkit, accessibility aids"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.2
DISTNAME=		kdeaccessibility-${VERSION}
MODKDE_VERSION?=	3.3.0

LIB_DEPENDS=	kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xrender Xtst art_lgpl_2 c jpeg kwalletclient \
		m png pthread stdc++ util z

.include <bsd.port.mk>
