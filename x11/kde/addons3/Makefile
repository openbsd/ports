# $OpenBSD: Makefile,v 1.15 2003/01/07 15:36:35 espie Exp $

COMMENT=		"X11 toolkit, addons"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.5a
DISTNAME=		kdeaddons-${VERSION}

LIB_DEPENDS= kdecore.4,DCOP,artskde,kdeui,khtml,kio,kparts::x11/kde/libs3 \
	kateinterfaces,konq,konqsidebarplugin::x11/kde/base3 \
	kmedia2_idl,qtmcop,soundserver_idl::x11/kde/arts3 \
	artsbuilder,artsgui,artsgui_idl,artsgui_kde,artsmidi_idl,artsmodules,knoatun,noatunarts,noatuncontrols,noatuntags::x11/kde/multimedia3 \
	SDL.1:sdl-*-!no_x11:devel/sdl

SEPARATE_BUILD=flavored
.include <bsd.port.mk>
