# $OpenBSD: Makefile,v 1.24 2004/04/13 04:22:37 brad Exp $

COMMENT=		"K Desktop Environment, edutainment"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.1
DISTNAME=		kdeedu-${VERSION}
MODKDE_VERSION?=	3.2
FLAVORS=debug

LIB_DEPENDS= kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kutils,kjs,kwalletclient::x11/kde/libs3
SEPARATE_BUILD=flavored

CONFIGURE_ARGS+=--disable-kig-python-scripting

.include <bsd.port.mk>
