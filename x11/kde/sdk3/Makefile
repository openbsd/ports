# $OpenBSD: Makefile,v 1.11 2004/07/24 12:47:16 espie Exp $

COMMENT= 		"K Desktop Environment, developer extensions"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.2.3
DISTNAME=		kdesdk-${VERSION}
MODKDE_VERSION=		3.2.3
LIB_DEPENDS= kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3

SEPARATE_BUILD=flavored

post-install:
	cd ${PREFIX}/bin && mv cvscheck kcvscheck

.include <bsd.port.mk>
