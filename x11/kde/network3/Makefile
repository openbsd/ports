# $OpenBSD: Makefile,v 1.3 2002/04/10 01:24:39 espie Exp $

COMMENT= 		"X11 toolkit, network applications"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0
DISTNAME=		kdenetwork-${VERSION}

LIB_DEPENDS= kdecore.4,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjava,kparts,kspell,vcard::x11/kde/libs3
#BUILD_DEPENDS=	::audio/lame

# for kaddressbook
RUN_DEPENDS+=	::x11/kde/base3

.include <bsd.port.mk>
