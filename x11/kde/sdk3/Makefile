# $OpenBSD: Makefile,v 1.14 2004/10/19 00:25:29 espie Exp $

COMMENT= 		"K Desktop Environment, developer extensions"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.3.1
DISTNAME=		kdesdk-${VERSION}
MODKDE_VERSION=		3.3.0
LIB_DEPENDS=	kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
		kcal::x11/kde/pim3

SEPARATE_BUILD=flavored

post-install:
	cd ${PREFIX}/bin && mv cvscheck kcvscheck

.include <bsd.port.mk>
