# $OpenBSD: Makefile,v 1.15 2004/08/01 18:46:10 naddy Exp $

COMMENT= 		"K Desktop Environment, extra language support"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.2.3
DISTNAME=		kdebindings-${VERSION}
MODKDE_VERSION=		3.2.3

LIB_DEPENDS=DCOP,kdecore.6,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmid,kparts,kscript,kspell,kutils,kwalletclient::x11/kde/libs3
BUILD_DEPENDS=::lang/python/2.3

SEPARATE_BUILD=flavored

.include <bsd.port.mk>
