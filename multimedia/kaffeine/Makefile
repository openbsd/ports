# $OpenBSD: Makefile,v 1.11 2007/09/10 23:22:29 jakemsr Exp $

CATEGORIES=	multimedia x11 x11/kde
COMMENT=	video player for KDE

HOMEPAGE=	http://kaffeine.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kaffeine/}
DISTNAME=	kaffeine-0.8.5
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=	kaffeinepart         0.0      # .0.1
SHARED_LIBS +=	kaffeineaudioencoder 0.0      # .0.1

MODULES=	x11/kde
MODKDE_VERSION=		3.5.7
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.60
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--disable-libsuffix \
			--without-gstreamer \
			--without-arts \
			--without-lame

USE_GMAKE=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
SEPARATE_BUILD=		simple

LIB_DEPENDS=		kdecore.>=7,DCOP,kdesu,kio,kdefx,kparts,kutils,kdeprint,kdeui,kwalletclient,khtml,kjs::x11/kde/libs3 \
			vorbis,vorbisenc::audio/libvorbis \
			cdda_interface,cdda_paranoia::audio/cdparanoia \
			xine::multimedia/xine-lib

WANTLIB=	X11 ICE Xrender SM Xext freetype Xinerama \
		util m pthread z c stdc++ expat fontconfig \
		pcre pcreposix iconv jpeg ogg png idn intl art_lgpl_2 \
	        Xau Xdmcp Xtst fam rpcsvc

# GPL
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes

.include <bsd.port.mk>
