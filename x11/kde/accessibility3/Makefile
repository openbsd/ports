# $OpenBSD: Makefile,v 1.5 2004/09/18 09:36:42 espie Exp $

COMMENT= 		"X11 toolkit, accessibility aids"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.0
DISTNAME=		kdeaccessibility-${VERSION}
MODKDE_VERSION?=	3.3.0

LIB_DEPENDS=	kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

.include <bsd.port.mk>
