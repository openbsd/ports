# $OpenBSD: Makefile,v 1.17 2003/04/05 14:53:38 espie Exp $

COMMENT=		"X11 toolkit, addons"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.1
DISTNAME=		kdeaddons-${VERSION}

LIB_DEPENDS= kdecore.4,DCOP,artskde,kdeui,khtml,kio,kparts::x11/kde/libs3 \
	kateinterfaces,konq,konqsidebarplugin,kmultitabbar::x11/kde/base3 \
	kmedia2_idl,qtmcop,soundserver_idl::x11/kde/arts3 \
	artsbuilder,artsgui,artsgui_idl,artsgui_kde,artsmidi_idl,artsmodules,knoatun,noatunarts,noatuncontrols,noatuntags::x11/kde/multimedia3 \
	SDL.1:sdl-*-!no_x11:devel/sdl \
	atlantic,atlantikui,kdegames::x11/kde/games3 \
	gdk,gtk::x11/gtk+ \
	xmms::audio/xmms

SEPARATE_BUILD=flavored
.include <bsd.port.mk>
