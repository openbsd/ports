# $OpenBSD: Makefile,v 1.9 2004/03/07 21:08:45 espie Exp $

COMMENT= 		"developer extensions for KDE"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.2.1
DISTNAME=		kdesdk-${VERSION}
MODKDE_VERSION=		3.2
LIB_DEPENDS= kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3

SEPARATE_BUILD=flavored

post-install:
	cd ${PREFIX}/bin && mv cvscheck kcvscheck

.include <bsd.port.mk>
