# $OpenBSD: Makefile,v 1.41 2006/08/03 10:53:36 espie Exp $

COMMENT=		"K Desktop Environment, games"

CATEGORIES=		x11 x11/kde games
VERSION=		3.5.4
DISTNAME=		kdegames-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5.3
SHARED_LIBS=		atlantic	4.0 \
			atlantikclient	4.0 \
			atlantikui	4.0 \
			kdegames	4.0 \
			kolf		4.0

LIB_DEPENDS= kdecore.>=6,artskde,DCOP,kdefx,kdeprint,kdesu,kdeui,kdnssd,kio,kparts::x11/kde/libs3
SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 artsflow artsflow_idl \
		audiofile c esd glib-2.0.0.0 gmodule-2.0.0.0 gthread-2.0.0.0 \
		jpeg kmedia2_idl kwalletclient m mad mcop ogg ossaudio png \
		pthread qtmcop soundserver_idl stdc++ util vorbis vorbisenc \
		vorbisfile z iconv intl idn

USE_LIBTOOL=Yes
LIBTOOL_FLAGS=--tag=disable-static

.include <bsd.port.mk>
