# $OpenBSD: Makefile,v 1.5 2006/06/12 13:38:00 espie Exp $

COMMENT= 		"billiard game"
CATEGORIES=		x11 x11/kde games
MODULES=		x11/kde
DISTNAME=		kbilliards-0.7
PKGNAME=		${DISTNAME}p0
HOMEPAGE=		http://www.hostnotfound.it/kbilliards.php
MASTER_SITES=		http://www.hostnotfound.it/kbilliards/
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		kdecore.6,kdesu,kdeui,DCOP,kdeprint,kio,kwalletclient,kdefx,artskde,kparts::x11/kde/libs3
WANTLIB=		m stdc++ ICE X11 z SM Xext util c ossaudio \
			Xrender pthread jpeg png ogg vorbis vorbisenc \
			vorbisfile mad qtmcop intl iconv mcop esd \
			art_lgpl_2 artsflow audiofile artsflow_idl \
			kmedia2_idl soundserver_idl idn \
			gthread-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0

MODKDE_VERSION=	3.3.0
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MODCONFIG_GUESS_DIRS+=	${MODKDE_CONFIG_GUESS_DIRS}
AUTOCONF_VERSION=	2.59
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
