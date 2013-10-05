# $OpenBSD: Makefile,v 1.71 2013/10/05 07:34:38 espie Exp $

COMMENT = 		K Desktop Environment, additional artwork
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeartwork-${VERSION}
MODKDE_VERSION =	3.5.8
PKGSPEC =		kdeartwork->=3,<4

MODULES =		x11/kde devel/gettext

LIB_DEPENDS =		x11/kde/libs3 \
			x11/kde/base3
SEPARATE_BUILD =	flavored

CONFIGURE_ENV +=	XSCREENSAVER=${LOCALBASE}/libexec/xscreensaver

BUILD_DEPENDS =		x11/xscreensaver
RUN_DEPENDS =		x11/xscreensaver \
			x11/gtk+2,-guic

REVISION =		14

WANTLIB =	FLAC GL GLU ICE SM X11 Xdamage Xext Xfixes Xrender Xt
WANTLIB +=	Xxf86vm art_lgpl_2 artsflow artsflow_idl artskde audiofile c
WANTLIB +=	drm expat fam fontconfig freetype glib-2.0 gmodule-2.0 
WANTLIB +=	gthread-2.0 idn kmedia2_idl kwalletclient lib/kde3/DCOP
WANTLIB +=	lib/kde3/kdecorations lib/kde3/kdecore>=6 lib/kde3/kdefx
WANTLIB +=	lib/kde3/kdesu lib/kde3/kdeui lib/kde3/kio lib/kde3/kparts
WANTLIB +=	lib/kde3/kscreensaver m mad mcop ogg pcre png pthread
WANTLIB +=	pthread-stubs qtmcop sndio soundserver_idl stdc++
WANTLIB +=	util vorbis vorbisenc vorbisfile xcb z


.include <bsd.port.mk>
