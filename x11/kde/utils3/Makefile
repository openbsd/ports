# $OpenBSD: Makefile,v 1.20 2004/04/13 04:22:37 brad Exp $

COMMENT= 		"K Desktop Environment, utilities"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.1
DISTNAME=		kdeutils-${VERSION}
MODKDE_VERSION=		3.2

LIB_DEPENDS=	DCOP,kabc,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		konq::x11/kde/base3

SEPARATE_BUILD=flavored
.include <bsd.port.mk>
