# $OpenBSD: Makefile,v 1.12 2002/07/16 12:20:42 espie Exp $

COMMENT= 		"X11 toolkit, additional artwork"
CATEGORIES=		x11 x11/kde
VERSION=		2.2.2
DISTNAME=		kdeartwork-${VERSION}

LIB_DEPENDS=	kdecore.3,kdeui::x11/kde/libs2

BUILD_DEPENDS+=	::x11/qt2-designer

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/kthememgr/Themes

.include <bsd.port.mk>
