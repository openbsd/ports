# $OpenBSD: Makefile,v 1.34 2005/11/29 14:11:33 espie Exp $

COMMENT=		"K Desktop Environment, games"

CATEGORIES=		x11 x11/kde games
VERSION=		3.5.0
DISTNAME=		kdegames-${VERSION}
MODKDE_VERSION=		3.5

LIB_DEPENDS= kdecore.6,artskde,DCOP,kdefx,kdeprint,kdesu,kdeui,kdnssd,kio,kparts::x11/kde/libs3
SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 artsflow artsflow_idl \
		audiofile c esd glib-2.0.0.0 gmodule-2.0.0.0 gthread-2.0.0.0 \
		jpeg kmedia2_idl kwalletclient m mad mcop ogg ossaudio png \
		pthread qtmcop soundserver_idl stdc++ util vorbis vorbisenc \
		vorbisfile z iconv intl

.include <bsd.port.mk>
