# $OpenBSD: Makefile,v 1.25 2004/10/19 00:25:29 espie Exp $

COMMENT= 		"K Desktop Environment, network applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.1
DISTNAME=		kdenetwork-${VERSION}
MODKDE_VERSION=		3.3.0
FLAVORS=debug

LIB_DEPENDS= kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,ktexteditor,kutils,kwalletclient,vcard,kspell::x11/kde/libs3 \
	xmms::audio/xmms

SEPARATE_BUILD=	flavored

post-configure:
	@touch ${WRKSRC}/Makefile.in
	@touch ${WRKBUILD}/Makefile

.include <bsd.port.mk>
