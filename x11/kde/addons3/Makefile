# $OpenBSD: Makefile,v 1.22 2004/02/01 19:58:43 espie Exp $

COMMENT=		"X11 toolkit, addons"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.95
DISTNAME=		kdeaddons-${VERSION}
MODKDE_VERSION=		3.2

LIB_DEPENDS= kdecore.4,DCOP,artskde,kdeui,khtml,kio,kparts,kmdi,kresources,kwalletclient,kjs::x11/kde/libs3 \
	kateinterfaces,konq,konqsidebarplugin,kateutils::x11/kde/base3 \
	kmedia2_idl,qtmcop,soundserver_idl::x11/kde/arts3 \
	artsbuilder,artsgui,artsgui_idl,artsgui_kde,artsmidi_idl,artsmodules,noatun,noatuncontrols,noatuntags,artsmodulescommon,artsmoduleseffects,artsmodulessynth,artsmodulesmixers::x11/kde/multimedia3 \
	SDL.1:sdl-*-!no_x11:devel/sdl \
	atlantic,atlantikui,kdegames::x11/kde/games3 \
	kdepim,kpinterfaces,kabinterfaces::x11/kde/pim3 \
	gdk,gtk::x11/gtk+ \
	xmms::audio/xmms

SEPARATE_BUILD=flavored
.include <bsd.port.mk>
