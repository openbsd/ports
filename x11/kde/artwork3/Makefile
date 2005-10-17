# $OpenBSD: Makefile,v 1.36 2005/10/17 11:28:24 espie Exp $

COMMENT= 		"K Desktop Environment, additional artwork"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.3
DISTNAME=		kdeartwork-${VERSION}
MODKDE_VERSION=		3.4

LIB_DEPENDS=kdecore.6,DCOP,kdefx,kdesu,kdeui,kio,kparts,kscreensaver::x11/kde/libs3 \
	kdecorations::x11/kde/base3
SEPARATE_BUILD=flavored

CONFIGURE_ENV+=XSCREENSAVER=${LOCALBASE}/libexec/xscreensaver

BUILD_DEPENDS=::x11/xscreensaver,no_gle
RUN_DEPENDS=:xscreensaver-*:x11/xscreensaver,no_gle

WANTLIB=	GL GLU ICE SM X11 Xext Xrender Xt art_lgpl_2 artsflow \
		artsflow_idl artskde audiofile c esd glib-2.0.0.0 \
		gmodule-2.0.0.0 gthread-2.0.0.0 iconv intl jpeg kmedia2_idl \
		kwalletclient m mad mcop ogg ossaudio png pthread qtmcop \
		soundserver_idl stdc++ util vorbis vorbisenc vorbisfile z

.include <bsd.port.mk>
