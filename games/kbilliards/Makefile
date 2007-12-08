# $OpenBSD: Makefile,v 1.13 2007/12/08 16:44:19 ajacoutot Exp $

COMMENT= 		billiard game
CATEGORIES=		x11 x11/kde games
DISTNAME=		kbilliards-0.8.7b
HOMEPAGE=		http://www.hostnotfound.it/kbilliards.php
MASTER_SITES=		http://www.hostnotfound.it/kbilliards/
EXTRACT_SUFX=		.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 artsflow \
		artsflow_idl audiofile bz2 c esd fam glib-2.0 \
		gmodule-2.0 gthread-2.0 idn jpeg kmedia2_idl m mad \
		mcop ogg ossaudio pcre png pthread qt-mt qtmcop rpcsvc \
		soundserver_idl stdc++ util vorbis vorbisenc \
		vorbisfile z

MODULES=		x11/kde	devel/gettext

# gtk-update-icon-cache
RUN_DEPENDS=		::x11/gtk+2

LIB_DEPENDS=		kdecore.>=6,kdesu,kdeui,DCOP,kdeprint,kio,kwalletclient,kdefx,artskde,kparts::x11/kde/libs3

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MODCONFIG_GUESS_DIRS+=	${MODKDE_CONFIG_GUESS_DIRS}
AUTOCONF_VERSION=	2.59
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes

CFLAGS+=		-Dsqrtl=sqrt

PORTHOME?=		${WRKDIR}

.include <bsd.port.mk>
