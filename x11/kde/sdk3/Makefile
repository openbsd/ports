# $OpenBSD: Makefile,v 1.10 2004/04/13 04:22:37 brad Exp $

COMMENT= 		"K Desktop Environment, developer extensions"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.2.1
DISTNAME=		kdesdk-${VERSION}
MODKDE_VERSION=		3.2
LIB_DEPENDS= kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3

SEPARATE_BUILD=flavored

post-install:
	cd ${PREFIX}/bin && mv cvscheck kcvscheck

.include <bsd.port.mk>
