# $OpenBSD: Makefile,v 1.20 2004/02/01 23:24:39 espie Exp $

COMMENT=		"X11 toolkit, edutainment"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.95
DISTNAME=		kdeedu-${VERSION}
MODKDE_VERSION?=	3.2
FLAVORS=debug

LIB_DEPENDS= kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kutils,kjs,kwalletclient::x11/kde/libs3
SEPARATE_BUILD=flavored

.include <bsd.port.mk>
