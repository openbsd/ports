# $OpenBSD: Makefile,v 1.70 2013/12/22 19:24:34 zhuk Exp $

COMMENT =		K Desktop Environment, games

CATEGORIES =		x11 x11/kde games
VERSION =		3.5.10
DISTNAME =		kdegames-${VERSION}
MODKDE_VERSION =	3.5.8
SHARED_LIBS +=	kdegames             4.0      # .3.0
SHARED_LIBS +=	atlantic             4.0      # .3.0
SHARED_LIBS +=	atlantikclient       4.0      # .3.0
SHARED_LIBS +=	atlantikui           4.0      # .3.0
SHARED_LIBS +=	kolf                 4.0      # .3.0

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS = 	x11/kde/libs3
SEPARATE_BUILD =	flavored

REVISION =	13
WANTLIB = GL ICE SM X11 Xau Xcursor Xdamage Xdmcp Xext Xfixes Xft Xi Xinerama \
	Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 artsflow artsflow_idl \
	audiofile c drm expat fam fontconfig freetype glib-2.0 gmodule-2.0 \
	gthread-2.0 idn jpeg kmedia2_idl kwalletclient lcms lib/kde3/DCOP \
	lib/kde3/artskde lib/kde3/kdecore>=6 lib/kde3/kdefx lib/kde3/kdeprint \
	lib/kde3/kdesu lib/kde3/kdeui lib/kde3/kdnssd lib/kde3/kio \
	lib/kde3/kparts m mad mcop mng ogg pcre png pthread pthread-stubs \
	qtmcop sndio soundserver_idl stdc++ util vorbis vorbisenc vorbisfile \
	xcb z
WANTLIB += avahi-client avahi-common dbus-1 dns_sd

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE_HTML_SUBDIR}/en/common

.include <bsd.port.mk>
