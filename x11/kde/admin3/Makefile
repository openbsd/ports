# $OpenBSD: Makefile,v 1.2 2004/02/07 01:46:23 espie Exp $

COMMENT= 		"X11 toolkit, admin tools"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.0
DISTNAME=		kdeadmin-${VERSION}
MODKDE_VERSION?=	3.2

LIB_DEPENDS=	DCOP,kdecore.6,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

.include <bsd.port.mk>
