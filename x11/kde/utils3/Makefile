# $OpenBSD: Makefile,v 1.11 2003/01/07 15:36:35 espie Exp $

COMMENT= 		"X11 toolkit, utilities"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.5a
DISTNAME=		kdeutils-${VERSION}

LIB_DEPENDS= kdecore.4,DCOP,kabc,kdefakes,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell,vcard::x11/kde/libs3
RUN_DEPENDS= ::comms/efax

SEPARATE_BUILD=flavored
.include <bsd.port.mk>
