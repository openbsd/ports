# $OpenBSD: Makefile,v 1.26 2004/09/18 09:36:43 espie Exp $

COMMENT=		"K Desktop Environment, edutainment"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.0
DISTNAME=		kdeedu-${VERSION}
MODKDE_VERSION?=	3.3.0
FLAVORS=debug

LIB_DEPENDS= kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kutils,kjs,kwalletclient::x11/kde/libs3
SEPARATE_BUILD=flavored

CONFIGURE_ARGS+=--disable-kig-python-scripting

.include <bsd.port.mk>
