# $OpenBSD: Makefile,v 1.4 2002/04/15 06:55:08 espie Exp $

COMMENT= 		"X11 toolkit, network applications"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0
DISTNAME=		kdenetwork-${VERSION}

LIB_DEPENDS= kdecore.4,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjava,kparts,kspell,vcard::x11/kde/libs3

# for kaddressbook
RUN_DEPENDS+=	::x11/kde/base3

.include <bsd.port.mk>
