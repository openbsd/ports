# $OpenBSD: Makefile,v 1.24 2004/02/07 01:46:23 espie Exp $

COMMENT= 		"X11 toolkit, additional artwork"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.0
DISTNAME=		kdeartwork-${VERSION}
MODKDE_VERSION=		3.2

LIB_DEPENDS=kdecore.6,DCOP,kdefx,kdesu,kdeui,kio,kparts,kscreensaver::x11/kde/libs3 \
	kdecorations::x11/kde/base3
SEPARATE_BUILD=flavored

CONFIGURE_ENV+=XSCREENSAVER=${LOCALBASE}/libexec/xscreensaver

BUILD_DEPENDS=::x11/xscreensaver
RUN_DEPENDS=::x11/xscreensaver

.include <bsd.port.mk>
