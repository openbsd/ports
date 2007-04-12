# $OpenBSD: Makefile,v 1.17 2007/04/12 20:24:29 sturm Exp $

CATEGORIES=	audio x11 x11/kde
COMMENT=	'music player for kde'

HOMEPAGE=	http://amarok.kde.org/
V=		1.4.5
MASTER_SITES=	${MASTER_SITE_KDE:=stable/amarok/$V/src/}
DISTNAME=	amarok-$V
PKGNAME=	${DISTNAME}p0
EXTRACT_SUFX=	.tar.bz2

FLAVORS=	debug

LIB_DEPENDS+=	lib/qt3/qt-mt.>=3.33::x11/qt3,mt \
		kdecore.>=6,DCOP,khtml,kwalletclient,kdefx,kdeprint,kutils,kdeui,kparts,kio,kdesu,kjs,knewstuff,kdnssd::x11/kde/libs3 \
		tag.>=5.0:taglib->=1.4:audio/taglib \
		xine::multimedia/xine-lib \
		sqlite3::databases/sqlite3 \
		gpod::audio/libgpod \
		njb::audio/libnjb

WANTLIB=	stdc++ Xext Xrender z X11 Xau Xdmcp util m SM c \
		pthread ICE idn freetype \
		iconv pcre pcreposix \
		jpeg png art_lgpl_2 intl usb \
		gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 gobject-2.0
		
LIB_DEPENDS+=	konqsidebarplugin::x11/kde/base3

SHARED_ONLY=	Yes
SHARED_LIBS +=	amarok               0.0      # .0.0
SHARED_LIBS +=	http11               0.0      # .0.0

MODULES=	x11/kde
USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
MODKDE_VERSION=		3.5.3
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MAKE_FLAGS+=		LIBRESOLV=

LIB_DEPENDS+=		ruby::lang/ruby


CONFIGURE_ARGS+=	--without-arts \
			--without-opengl --without-gstreamer \
			--with-xine --without-included-sqlite \
			--without-xmms \
			--without-libmtp

PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes


.include <bsd.port.mk>
