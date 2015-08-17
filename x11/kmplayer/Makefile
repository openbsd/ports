# $OpenBSD: Makefile,v 1.24 2015/08/17 20:34:20 sthen Exp $

COMMENT=	front-end/embeddable KPart for MPlayer
CATEGORIES=	x11 x11/kde
DISTNAME=	kmplayer-0.6.4
EXTRACT_SUFX=	.tar.bz2

REVISION=	12

SHARED_LIBS=	kparts_kmplayer  0.0 \
		kdeinit_kmplayer 0.0

MASTER_SITES=	http://www.xs4all.nl/~jjvrieze/
WRKDIST=${WRKDIR}/kmplayer
VERSION=3
MAINTAINER=	Marc Espie <espie@openbsd.org>

MODKDE_VERSION=	3.1
MODULES=	x11/kde devel/gettext

MODKDE_FIXUP_DATADIR=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.52
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/${KDE}" CXXFLAGS="-O2 -fPIC"
USE_GMAKE=		Yes
USE_LIBTOOL =		No
PORTHOME=${WRKDIR}

CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}

# GPLv2+
PERMIT_PACKAGE_CDROM=Yes

WANTLIB =  ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 audiofile c
WANTLIB += expat fam fontconfig freetype glib-2.0 gmodule-2.0
WANTLIB += gthread-2.0 idn m mad mcop ogg pcre png pthread sndio
WANTLIB += stdc++ util vorbis vorbisenc vorbisfile xcb z
WANTLIB += FLAC pthread-stubs
WANTLIB += ${KDE}/DCOP ${KDE}/artsflow ${KDE}/artsflow_idl
WANTLIB += ${KDE}/artskde ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kmedia2_idl
WANTLIB += ${KDE}/kmediaplayer ${KDE}/kparts ${KDE}/kwalletclient
WANTLIB += ${KDE}/qtmcop ${KDE}/soundserver_idl

LIB_DEPENDS=x11/kde/libs3

RUN_DEPENDS=	x11/mplayer

SEPARATE_BUILD=flavored

.include <bsd.port.mk>
