# $OpenBSD: Makefile,v 1.6 2002/04/10 01:24:39 espie Exp $

COMMENT= 		"X11 toolkit, additional artwork"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0
DISTNAME=		kdeartwork-${VERSION}

LIB_DEPENDS=kdecore.4,DCOP,kdefx,kdesu,kdeui,kio,kscreensaver::x11/kde/libs3 \
    kwin::x11/kde/base3

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/kthememgr/Themes

.include <bsd.port.mk>
