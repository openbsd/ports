# $OpenBSD: Makefile,v 1.33 2017/04/10 11:46:19 sthen Exp $

COMMENT= 		billiard game
CATEGORIES=		x11 x11/kde games
DISTNAME=		kbilliards-0.8.7b
REVISION =		13

HOMEPAGE=		http://www.hostnotfound.it/kbilliards.php
MASTER_SITES=		http://www.hostnotfound.it/kbilliards/
EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2
WANTLIB += audiofile bz2 c expat fam fontconfig freetype glib-2.0
WANTLIB += gmodule-2.0 gthread-2.0 idn m mad ogg pcre png 
WANTLIB += pthread pthread-stubs sndio ${LIBCXX} util vorbis
WANTLIB += vorbisenc vorbisfile xcb z
WANTLIB += X11-xcb Xdamage Xxf86vm drm glapi xcb-dri2 xcb-glx
WANTLIB += ${KDE}/DCOP ${KDE}/artsflow ${KDE}/artsflow_idl
WANTLIB += ${KDE}/artskde ${KDE}/kdecore>=6 ${KDE}/kdefx
WANTLIB += ${KDE}/kdeprint ${KDE}/kdesu ${KDE}/kdeui ${KDE}/kio
WANTLIB += ${KDE}/kmedia2_idl ${KDE}/kparts ${KDE}/kwalletclient
WANTLIB += ${KDE}/mcop ${KDE}/qtmcop ${KDE}/soundserver_idl 

MODULES=		x11/kde	devel/gettext

LIB_DEPENDS=		x11/kde/libs3

RUN_DEPENDS=		x11/gtk+3,-guic

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MODCONFIG_GUESS_DIRS+=	${MODKDE_CONFIG_GUESS_DIRS}
AUTOCONF_VERSION=	2.59
USE_GMAKE=		Yes

PORTHOME?=		${WRKDIR}

.include <bsd.port.mk>
