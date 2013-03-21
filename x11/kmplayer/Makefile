# $OpenBSD: Makefile,v 1.15 2013/03/21 08:33:52 landry Exp $

COMMENT=	front-end/embeddable KPart for MPlayer
CATEGORIES=	x11 x11/kde
DISTNAME=	kmplayer-0.6.4
EXTRACT_SUFX=	.tar.bz2

REVISION=	3

SHARED_LIBS=	kparts_kmplayer  0.0 \
		kdeinit_kmplayer 0.0

MASTER_SITES=	http://www.xs4all.nl/~jjvrieze/
WRKDIST=${WRKDIR}/kmplayer
VERSION=3
MAINTAINER=	Marc Espie <espie@openbsd.org>

MODKDE_VERSION=	3.1
MODULES=	x11/kde devel/gettext
MODGNU_CONFIG_GUESS_DIRS=	${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.52
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE=		Yes
USE_LIBTOOL =		No
PORTHOME=${WRKDIR}

CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}

# GPLv2+
PERMIT_PACKAGE_CDROM=Yes
WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 artsflow artsflow_idl \
		audiofile c \
		kmedia2_idl kwalletclient m mad mcop ogg \
		png pthread qtmcop soundserver_idl stdc++ util vorbis \
		vorbisenc vorbisfile z kdecore DCOP kdefx kdesu kdeui kio \
		kmediaplayer kparts artskde
WANTLIB += Xfixes Xt expat fam fontconfig freetype glib-2.0 gmodule-2.0
WANTLIB += gthread-2.0 idn pcre sndio xcb

LIB_DEPENDS=x11/kde/libs3

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/mplayer

SEPARATE_BUILD=flavored

.include <bsd.port.mk>
