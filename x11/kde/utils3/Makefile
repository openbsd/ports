# $OpenBSD: Makefile,v 1.23 2004/10/19 00:25:30 espie Exp $

COMMENT= 		"K Desktop Environment, utilities"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.1
DISTNAME=		kdeutils-${VERSION}
MODKDE_VERSION=		3.3.0

LIB_DEPENDS=	DCOP,kabc,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		konq::x11/kde/base3

SEPARATE_BUILD=flavored
.include <bsd.port.mk>
