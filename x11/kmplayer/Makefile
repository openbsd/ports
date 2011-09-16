# $OpenBSD: Makefile,v 1.12 2011/09/16 12:29:16 espie Exp $


BROKEN=		Need to resolve various issues
COMMENT=	front-end/embeddable kpart for mplayer
CATEGORIES=	x11	x11/kde
DISTNAME=	kmplayer-0.6.4
EXTRACT_SUFX=	.tar.bz2

REVISION=	2

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
PORTHOME=${WRKDIR}

CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}

# GPL
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 artsflow artsflow_idl \
		audiofile c esd glib-2.0.0.0 gmodule-2.0.0.0 gthread-2.0.0.0 \
		jpeg kmedia2_idl kwalletclient m mad mcop ogg \
		ossaudio png pthread qtmcop soundserver_idl stdc++ util vorbis \
		vorbisenc vorbisfile z kdecore DCOP kdefx kdesu kdeui kio \
		kmediaplayer kparts artskde

LIB_DEPENDS=x11/kde/libs3

RUN_DEPENDS=x11/mplayer

SEPARATE_BUILD=flavored

.include <bsd.port.mk>
