# $OpenBSD: Makefile,v 1.7 2006/08/03 23:15:57 espie Exp $

COMMENT=		"tools to edit/modify/encode video streams"

DISTNAME=		mjpegtools-1.8.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		multimedia
SHARED_LIBS=		lavfile		3.0 \
			lavfile-1.8	3.0 \
			lavjpeg		3.0 \
			lavjpeg-1.8	3.0 \
			lavplay		3.0 \
			lavplay-1.8	3.0 \
			mjpegutils	3.0 \
			mjpegutils-1.8	3.0 \
			mpeg2encpp	4.0 \
			mpeg2encpp-1.8	4.0 \
			mplex2		4.0 \
			mplex2-1.8	4.0

HOMEPAGE=		http://mjpeg.sourceforge.net/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mjpeg/}

WANTLIB=		X11 Xext Xrender c cairo fontconfig \
			freetype glitz m pthread stdc++ usbhid z

MODULES+=		devel/gettext

BUILD_DEPENDS=		::devel/pkgconfig

LIB_DEPENDS=		SDL.>=2:sdl-*-!no_x11:devel/sdl \
			dv.>=4::multimedia/libdv \
			jpeg.>=62::graphics/jpeg \
			png.>=4::graphics/png \
			atk-1.0.>=800.0::devel/atk \
			glib-2.0.>=600.0,gmodule-2.0.>=600.0,gobject-2.0.>=600.0::devel/glib2 \
			gdk-x11-2.0.>=400.0,gdk_pixbuf-2.0.>=400.0,gtk-x11-2.0.>=400.0::x11/gtk+2 \
			pango-1.0.>=1001.0,pangoft2-1.0.>=1001.0,pangocairo-1.0.>=1001.0::devel/pango

USE_LIBTOOL=		Yes
AUTOMAKE_VERSION=	1.9
AUTOCONF_VERSION=	2.59

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	autoconf no-autoheader automake
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-x --with-libpng --with-libdv

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG="${LOCALBASE}/bin/pkg-config"

FLAVORS=		quicktime optimized
FLAVOR?=

.if ${FLAVOR:L:Moptimized}
CONFIGURE_ARGS+=	--enable-simd-accel
.else
CONFIGURE_ARGS+=	--disable-simd-accel
.endif

.if ${FLAVOR:L:Mquicktime}
LIB_DEPENDS+=		quicktime.>=2::multimedia/libquicktime
CONFIGURE_ARGS+=	--with-libquicktime
.else
CONFIGURE_ARGS+=	--without-libquicktime
.endif

pre-configure:
	cd ${WRKSRC} && env AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} automake

.include <bsd.port.mk>
