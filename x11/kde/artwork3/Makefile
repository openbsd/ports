# $OpenBSD: Makefile,v 1.16 2003/04/05 14:53:38 espie Exp $

COMMENT= 		"X11 toolkit, additional artwork"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.1
DISTNAME=		kdeartwork-${VERSION}

LIB_DEPENDS=kdecore.4,DCOP,kdefx,kdesu,kdeui,kio,kscreensaver::x11/kde/libs3 \
    kwin::x11/kde/base3
SEPARATE_BUILD=flavored

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/kthememgr/Themes

.include <bsd.port.mk>
