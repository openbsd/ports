# $OpenBSD: Makefile,v 1.6 2002/05/24 23:59:01 espie Exp $

COMMENT=		"X11 toolkit, addons"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0.1
DISTNAME=		kdeaddons-${VERSION}

LIB_DEPENDS= kdecore.4,DCOP,artskde,kdeui,khtml,kio,kparts::x11/kde/libs3 \
	kateinterfaces,konq,konqsidebarplugin::x11/kde/base3 \
	kmedia2_idl,qtmcop,soundserver_idl::x11/kde/arts3 \
	artsbuilder,artsgui,artsgui_idl,artsguid_kde,artsmidi_idl,artsmodules,knoatun,noatunarts,noatuncontrols,noatuntags::x11/kde/multimedia3

.include <bsd.port.mk>
