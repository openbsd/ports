# $OpenBSD: Makefile,v 1.6 2004/09/18 09:36:43 espie Exp $

COMMENT= 		"K Desktop Environment, admin tools"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.0
DISTNAME=		kdeadmin-${VERSION}
MODKDE_VERSION?=	3.3.0

LIB_DEPENDS=	DCOP,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

.include <bsd.port.mk>
