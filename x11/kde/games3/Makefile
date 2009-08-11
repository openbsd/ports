# $OpenBSD: Makefile,v 1.55 2009/08/11 08:40:40 ajacoutot Exp $

COMMENT =		K Desktop Environment, games

CATEGORIES =		x11 x11/kde games
VERSION =		3.5.10
DISTNAME =		kdegames-${VERSION}
PKGNAME =		${DISTNAME}p1
MODKDE_VERSION =	3.5.8
SHARED_LIBS +=	kdegames             4.0      # .3.0
SHARED_LIBS +=	atlantic             4.0      # .3.0
SHARED_LIBS +=	atlantikclient       4.0      # .3.0
SHARED_LIBS +=	atlantikui           4.0      # .3.0
SHARED_LIBS +=	kolf                 4.0      # .3.0

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS = 	kdecore.>=6,artskde,DCOP,kdefx,kdeprint,kdesu,kdeui,kdnssd,kio,kparts::x11/kde/libs3
SEPARATE_BUILD =	flavored

WANTLIB =	ICE SM X11 Xext Xrender art_lgpl_2 artsflow artsflow_idl \
		audiofile c glib-2.0 gmodule-2.0 gthread-2.0 \
		jpeg kmedia2_idl kwalletclient m mad mcop ogg png pthread \
		qtmcop sndio soundserver_idl stdc++ util vorbis vorbisenc \
		vorbisfile z iconv intl idn Xau Xdmcp fam rpcsvc pcre \
		pthread-stubs xcb

.include <bsd.port.mk>
