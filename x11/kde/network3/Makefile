# $OpenBSD: Makefile,v 1.19 2004/02/01 23:51:13 espie Exp $

COMMENT= 		"X11 toolkit, network applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.95
DISTNAME=		kdenetwork-${VERSION}
MODKDE_VERSION=		3.2
FLAVORS=debug

LIB_DEPENDS= kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,ktexteditor,kutils,kwalletclient,vcard,kspell::x11/kde/libs3 \
	xmms::audio/xmms

SEPARATE_BUILD=	flavored

post-configure:
	@touch ${WRKSRC}/Makefile.in
	@touch ${WRKBUILD}/Makefile

.include <bsd.port.mk>
