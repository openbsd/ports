# $OpenBSD: Makefile,v 1.6 2006/12/04 01:20:31 espie Exp $

CATEGORIES=	multimedia x11 x11/kde
COMMENT=	'video player for kde'

HOMEPAGE=	http://kaffeine.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kaffeine/}
DISTNAME=	kaffeine-0.8.3
PKGNAME=	${DISTNAME}
EXTRACT_SUFX=	.tar.bz2

		
SHARED_ONLY=	Yes
SHARED_LIBS +=	kaffeinepart         0.0      # .0.1
SHARED_LIBS +=	kaffeineaudioencoder 0.0      # .0.1

MODULES=	x11/kde
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
MODKDE_VERSION=		3.5.3
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--disable-libsuffix \
			--without-gstreamer \
			--without-arts \
			--without-lame

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MAKE_FLAGS+=		LIBRESOLV=
SEPARATE_BUILD=		Yes

LIB_DEPENDS=		kdecore.>=7,DCOP,kdesu,kio,kdefx,kparts,kutils,kdeprint,kdeui,kwalletclient,khtml,kjs::x11/kde/libs3 \
			vorbis,vorbisenc::audio/libvorbis \
			cdda_interface,cdda_paranoia::audio/cdparanoia \
			xine::multimedia/xine-lib

WANTLIB=	X11 ICE Xrender SM Xext freetype Xinerama \
		util m pthread z c stdc++ \
		pcre pcreposix iconv jpeg ogg png idn intl art_lgpl_2

PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes


.include <bsd.port.mk>
