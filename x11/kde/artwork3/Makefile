# $OpenBSD: Makefile,v 1.12 2002/12/02 16:27:21 espie Exp $

COMMENT= 		"X11 toolkit, additional artwork"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.5
DISTNAME=		kdeartwork-${VERSION}

LIB_DEPENDS=kdecore.4,DCOP,kdefx,kdesu,kdeui,kio,kscreensaver::x11/kde/libs3 \
    kwin::x11/kde/base3
SEPARATE_BUILD=simple

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/kthememgr/Themes

.include <bsd.port.mk>
