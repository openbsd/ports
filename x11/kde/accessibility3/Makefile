# $OpenBSD: Makefile,v 1.3 2004/03/07 21:08:43 espie Exp $

COMMENT= 		"X11 toolkit, accessibility aids"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.1
DISTNAME=		kdeaccessibility-${VERSION}
MODKDE_VERSION?=	3.2

LIB_DEPENDS=	kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

.include <bsd.port.mk>
