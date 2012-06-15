# $OpenBSD: Makefile,v 1.29 2012/06/15 08:32:17 ajacoutot Exp $

COMMENT=	video player for KDE

VERSION=	0.8.8
DISTNAME=	kaffeine-${VERSION}
REVISION=	8
CATEGORIES=	multimedia x11 x11/kde
MASTER_SITES=	http://hftom.free.fr/ \
		${MASTER_SITE_SOURCEFORGE:=kaffeine/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	kaffeinepart		0.0 \
		kaffeineaudioencoder	0.0

HOMEPAGE=	http://kaffeine.sourceforge.net/

# GPLv2+
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xinerama Xrender Xtst art_lgpl_2
WANTLIB += c expat fam fontconfig freetype idn jpeg m ogg
WANTLIB += pcre pcreposix png pthread pthread-stubs rpcsvc stdc++
WANTLIB += util xcb z kdecore DCOP kdesu kio kdefx kparts kutils
WANTLIB += kdeprint kdeui kwalletclient khtml kjs vorbis vorbisenc
WANTLIB += cdio cdio_cdda cdio_paranoia xine

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
