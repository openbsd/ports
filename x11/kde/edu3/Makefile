# $OpenBSD: Makefile,v 1.25 2004/07/24 12:47:14 espie Exp $

COMMENT=		"K Desktop Environment, edutainment"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.3
DISTNAME=		kdeedu-${VERSION}
MODKDE_VERSION?=	3.2.3
FLAVORS=debug

LIB_DEPENDS= kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kutils,kjs,kwalletclient::x11/kde/libs3
SEPARATE_BUILD=flavored

CONFIGURE_ARGS+=--disable-kig-python-scripting

.include <bsd.port.mk>
