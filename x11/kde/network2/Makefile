# $OpenBSD: Makefile,v 1.8 2002/07/16 12:20:43 espie Exp $

COMMENT= 		"X11 toolkit, network applications"
CATEGORIES=		x11 x11/kde
VERSION=		2.2.2
DISTNAME=		kdenetwork-${VERSION}

LIB_DEPENDS=	kdecore.3,kdeui::x11/kde/libs2

BUILD_DEPENDS=	::x11/qt2-designer 

# for kaddressbook
RUN_DEPENDS+=	::x11/kde/base2

.include <bsd.port.mk>
