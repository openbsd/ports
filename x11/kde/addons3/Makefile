# $OpenBSD: Makefile,v 1.29 2004/10/19 00:25:24 espie Exp $

COMMENT=		"K Desktop Environment, addons"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.1
DISTNAME=		kdeaddons-${VERSION}
MODKDE_VERSION=		3.3.0

LIB_DEPENDS= kdecore.6,DCOP,artskde,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmdi,kmediaplayer,kparts,kresources,kscript,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
	SDL.1:sdl-*-!no_x11:devel/sdl \
	artsbuilder,artsgui,artsgui_idl,artsgui_kde,artsmidi_idl,artsmodules,artsmodulescommon,artsmoduleseffects,artsmodulesmixers,artsmodulessynth,noatun,noatuncontrols,noatuntags::x11/kde/multimedia3 \
	atlantic,atlantikui,kdegames::x11/kde/games3 \
	kateinterfaces,kateutils,konq,konqsidebarplugin::x11/kde/base3 \
	kabinterfaces,kdepim,kpinterfaces::x11/kde/pim3 \
	gdk,gtk::x11/gtk+ \
	xmms::audio/xmms

# XXX no version number on noatunarts

SEPARATE_BUILD=flavored
.include <bsd.port.mk>
