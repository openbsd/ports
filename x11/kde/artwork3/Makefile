# $OpenBSD: Makefile,v 1.68 2012/09/02 11:23:19 naddy Exp $

COMMENT = 		K Desktop Environment, additional artwork
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeartwork-${VERSION}
MODKDE_VERSION =	3.5.8

MODULES =		x11/kde devel/gettext

LIB_DEPENDS =		x11/kde/libs3 \
			x11/kde/base3
SEPARATE_BUILD =	flavored

CONFIGURE_ENV +=	XSCREENSAVER=${LOCALBASE}/libexec/xscreensaver

BUILD_DEPENDS =		x11/xscreensaver,-data
RUN_DEPENDS =		x11/xscreensaver,-data \
			x11/gtk+2,-guic

REVISION =		11

WANTLIB = GL GLU ICE SM X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xt Xxf86vm \
	art_lgpl_2 artsflow artsflow_idl artskde audiofile c drm fam glib-2.0 \
	gmodule-2.0 gthread-2.0 idn jpeg kmedia2_idl kwalletclient \
	lib/kde3/DCOP lib/kde3/kdecorations lib/kde3/kdecore>=6 \
	lib/kde3/kdefx lib/kde3/kdesu lib/kde3/kdeui lib/kde3/kio \
	lib/kde3/kparts lib/kde3/kscreensaver m mad mcop ogg pcre png pthread \
	pthread-stubs qtmcop rpcsvc sndio soundserver_idl stdc++ util vorbis \
	vorbisenc vorbisfile xcb z


.include <bsd.port.mk>
