# $OpenBSD: Makefile,v 1.1.1.1 2004/02/02 01:19:33 espie Exp $

COMMENT= 		"X11 toolkit, accessibility aids"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.95
DISTNAME=		kdeaccessibility-${VERSION}
MODKDE_VERSION?=	3.2

LIB_DEPENDS=	kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

.include <bsd.port.mk>
