# $OpenBSD: Makefile,v 1.30 2004/10/19 00:25:24 espie Exp $

COMMENT= 		"K Desktop Environment, additional artwork"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.1
DISTNAME=		kdeartwork-${VERSION}
MODKDE_VERSION=		3.3.0

LIB_DEPENDS=kdecore.6,DCOP,kdefx,kdesu,kdeui,kio,kparts,kscreensaver::x11/kde/libs3 \
	kdecorations::x11/kde/base3
SEPARATE_BUILD=flavored

CONFIGURE_ENV+=XSCREENSAVER=${LOCALBASE}/libexec/xscreensaver

BUILD_DEPENDS=::x11/xscreensaver,no_gle
RUN_DEPENDS=:xscreensaver-*:x11/xscreensaver,no_gle

.include <bsd.port.mk>
