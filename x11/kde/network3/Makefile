# $OpenBSD: Makefile,v 1.18 2004/02/01 14:59:24 espie Exp $

COMMENT= 		"X11 toolkit, network applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.95
DISTNAME=		kdenetwork-${VERSION}
MODKDE_VERSION=		3.2
FLAVORS=debug

LIB_DEPENDS= kdecore.4,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjava,kparts,kspell,vcard::x11/kde/libs3 \
	xmms::audio/xmms

SEPARATE_BUILD=	flavored
# for kaddressbook
RUN_DEPENDS+=	::x11/kde/base3

post-configure:
	@touch ${WRKSRC}/Makefile.in
	@touch ${WRKBUILD}/Makefile

.include <bsd.port.mk>
