# $OpenBSD: Makefile,v 1.7 2002/04/10 01:24:39 espie Exp $

COMMENT= 		"X11 toolkit, network applications"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		2.2.2
DISTNAME=		kdenetwork-${VERSION}

LIB_DEPENDS=	kdecore.3,kdeui::x11/kde/libs2

BUILD_DEPENDS=	::x11/qt2-designer 

# for kaddressbook
RUN_DEPENDS+=	::x11/kde/base2

.include <bsd.port.mk>
