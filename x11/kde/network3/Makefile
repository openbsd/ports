# $OpenBSD: Makefile,v 1.5 2002/05/23 14:37:22 espie Exp $

COMMENT= 		"X11 toolkit, network applications"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0.1
DISTNAME=		kdenetwork-${VERSION}
PATCHFILES=		post-3.0.1-kdenetwork.diff
PATCH_DIST_STRIP=	-p1

LIB_DEPENDS= kdecore.4,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjava,kparts,kspell,vcard::x11/kde/libs3

# for kaddressbook
RUN_DEPENDS+=	::x11/kde/base3

.include <bsd.port.mk>
