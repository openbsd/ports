# $OpenBSD: Makefile,v 1.4 2004/07/24 12:47:13 espie Exp $

COMMENT= 		"X11 toolkit, accessibility aids"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.3
DISTNAME=		kdeaccessibility-${VERSION}
MODKDE_VERSION?=	3.2.3

LIB_DEPENDS=	kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

.include <bsd.port.mk>
