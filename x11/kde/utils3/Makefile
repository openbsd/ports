# $OpenBSD: Makefile,v 1.19 2004/04/10 12:55:44 sturm Exp $

COMMENT= 		"X11 toolkit, utilities"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.1
DISTNAME=		kdeutils-${VERSION}
MODKDE_VERSION=		3.2

LIB_DEPENDS= DCOP,kabc,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
	     konq::x11/kde/base3

SEPARATE_BUILD=flavored
.include <bsd.port.mk>
