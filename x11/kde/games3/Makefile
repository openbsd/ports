# $OpenBSD: Makefile,v 1.36 2006/01/03 16:55:50 espie Exp $

COMMENT=		"K Desktop Environment, games"

CATEGORIES=		x11 x11/kde games
VERSION=		3.5.0
DISTNAME=		kdegames-${VERSION}
PKGNAME=		${DISTNAME}p0
MODKDE_VERSION=		3.5
SHARED_LIBS=		atlantic	3.0 \
			atlantikclient	3.0 \
			atlantikui	3.0 \
			kdegames	3.0 \
			kolf		3.0

LIB_DEPENDS= kdecore.6,artskde,DCOP,kdefx,kdeprint,kdesu,kdeui,kdnssd,kio,kparts::x11/kde/libs3
SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 artsflow artsflow_idl \
		audiofile c esd glib-2.0.0.0 gmodule-2.0.0.0 gthread-2.0.0.0 \
		jpeg kmedia2_idl kwalletclient m mad mcop ogg ossaudio png \
		pthread qtmcop soundserver_idl stdc++ util vorbis vorbisenc \
		vorbisfile z iconv intl

USE_LIBTOOL=Yes
LIBTOOL_FLAGS=--tag=disable-static

.include <bsd.port.mk>
