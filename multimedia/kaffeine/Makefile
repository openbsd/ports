# $OpenBSD: Makefile,v 1.32 2013/04/29 06:51:59 brad Exp $

COMMENT=	video player for KDE

VERSION=	0.8.8
DISTNAME=	kaffeine-${VERSION}
REVISION=	10
CATEGORIES=	multimedia x11 x11/kde
MASTER_SITES=	http://hftom.free.fr/ \
		${MASTER_SITE_SOURCEFORGE:=kaffeine/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	kaffeineaudioencoder	0.0

HOMEPAGE=	http://kaffeine.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += DCOP ICE SM X11 Xau Xdmcp Xext Xfixes Xi Xinerama Xrender
WANTLIB += Xt Xtst art_lgpl_2 avutil c cdio cdio_cdda cdio_paranoia
WANTLIB += expat fam fontconfig freetype idn kdecore kdefx kdeprint
WANTLIB += kdesu kdeui khtml kio kjs kparts kutils kwalletclient
WANTLIB += m ogg pcre pcreposix pthread pthread-stubs stdc++ util
WANTLIB += vorbis vorbisenc xcb xine z

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS=	x11/kde/libs3 \
		audio/libvorbis \
		audio/libcdio \
		multimedia/xine-lib

SUBST_VARS=	VERSION

MODULES=	x11/kde devel/gettext
MODKDE_VERSION=	3.5.7

PORTHOME=	${WRKDIR}

MAKE_ENV=	${CONFIGURE_ENV}
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.63
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --disable-libsuffix \
		 --without-arts \
		 --without-gstreamer \
		 --without-lame
CONFIGURE_ENV+=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
