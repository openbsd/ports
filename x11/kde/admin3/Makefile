# $OpenBSD: Makefile,v 1.4 2004/04/13 04:22:37 brad Exp $

COMMENT= 		"K Desktop Environment, admin tools"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.1
DISTNAME=		kdeadmin-${VERSION}
MODKDE_VERSION?=	3.2

LIB_DEPENDS=	DCOP,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

.include <bsd.port.mk>
