# $OpenBSD: Makefile,v 1.5 2004/07/24 12:47:13 espie Exp $

COMMENT= 		"K Desktop Environment, admin tools"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.3
DISTNAME=		kdeadmin-${VERSION}
MODKDE_VERSION?=	3.2.3

LIB_DEPENDS=	DCOP,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

.include <bsd.port.mk>
