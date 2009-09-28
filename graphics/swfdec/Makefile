# $OpenBSD: Makefile,v 1.23 2009/09/28 18:32:40 ajacoutot Exp $

COMMENT=	flash rendering library
DISTNAME=	swfdec-0.8.4
PKGNAME=	${DISTNAME}p1
SHARED_LIBS +=	swfdec-0.8           0.0      # .90.0
SHARED_LIBS +=	swfdec-gtk-0.8       0.0      # .90.0
CATEGORIES=	graphics

HOMEPAGE=	http://swfdec.freedesktop.org/

# LGPLv2.1
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}download/swfdec/0.8/

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gcrypt gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls \
		gobject-2.0 gpg-error gstreamer-0.10 gthread-2.0 m oil-0.3 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		pthread-stubs sndio tasn1 xcb xml2 z

LIB_DEPENDS=	soup-2.4::devel/libsoup \
		gstpbutils-0.10::multimedia/gstreamer-0.10/plugins-base \
		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

RUN_DEPENDS=	::multimedia/gstreamer-0.10/plugins-bad \
		::multimedia/gstreamer-0.10/plugins-ugly \
		:gstreamer-ffmpeg-*:multimedia/gstreamer-0.10/plugins-ffmpeg
MODULES=	devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-audio=sndio \
			--enable-gtk \
			--enable-gstreamer
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig"

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

post-patch:
	cp ${FILESDIR}/swfdec_playback_sndio.c ${WRKSRC}/swfdec-gtk/
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -i -f

.include <bsd.port.mk>
