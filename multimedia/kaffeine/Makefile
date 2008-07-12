# $OpenBSD: Makefile,v 1.16 2008/07/12 05:29:17 brad Exp $

COMMENT=	video player for KDE

VERSION=	0.8.7
DISTNAME=	kaffeine-${VERSION}
CATEGORIES=	multimedia x11 x11/kde
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kaffeine/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=	kaffeinepart         0.0      # .0.1
SHARED_LIBS +=	kaffeineaudioencoder 0.0      # .0.1

HOMEPAGE=	http://kaffeine.sourceforge.net/

# GPLv2+
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xinerama Xrender Xtst art_lgpl_2 \
		c expat fam fontconfig freetype iconv idn intl jpeg m ogg \
		pcre pcreposix png pthread rpcsvc stdc++ util z

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	kdecore.>=7,DCOP,kdesu,kio,kdefx,kparts,kutils,kdeprint,kdeui,kwalletclient,khtml,kjs::x11/kde/libs3 \
		vorbis,vorbisenc::audio/libvorbis \
		cdda_interface,cdda_paranoia::audio/cdparanoia \
		xine.>=20::multimedia/xine-lib

SUBST_VARS=	VERSION

MODULES=	x11/kde
MODKDE_VERSION=	3.5.7

PORTHOME=	${WRKDIR}

MAKE_ENV=	${CONFIGURE_ENV}
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

SEPARATE_BUILD=	simple
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --disable-libsuffix \
		 --without-arts \
		 --without-gstreamer \
		 --without-lame
CONFIGURE_ENV+=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
