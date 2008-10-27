# $OpenBSD: Makefile,v 1.9 2008/10/27 13:15:58 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	graph based image processing framework
COMMENT-plugins=gegl plugins

V=		0.0.20
DISTNAME=	gegl-${V}
CATEGORIES=	graphics devel

PKGNAME-main=	gegl-${V}
PKGNAME-plugins=gegl-plugins-${V}

SHARED_LIBS=	gegl-0.0	1.1 # .20.0

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gegl.org/

# GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gimp.org/pub/gegl/${V:R}/

MULTI_PACKAGES=	-main -plugins

WANTLIB=	X11 Xau Xdmcp Xext Xrandr Xrender glib-2.0 gmodule-2.0 \
		gio-2.0 gobject-2.0 gthread-2.0 m pcre z

MODULES=	devel/gettext

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

USE_GMAKE=	Yes
USE_X11=	Yes

WANTLIB-main=	${WANTLIB} ORBit-2 Xcomposite Xcursor Xdamage Xfixes \
		Xi Xinerama atk-1.0 bz2 c cairo croco-0.6 crypto \
		dbus-1 dbus-glib-1 expat fontconfig freetype gconf-2 \
		gdk-x11-2.0 gdk_pixbuf-2.0 glitz gnomevfs-2 gsf-1 \
		gtk-x11-2.0 jpeg pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread ssl util xml2
LIB_DEPENDS-main= ${LIB_DEPENDS} \
		rsvg-2:librsvg-*-!no_gnome:x11/gnome/librsvg \
		babl-0.0::graphics/babl

WANTLIB-plugins=${WANTLIB} Half Iex IlmThread Imath SDL a52 bz2 faac faad \
		mp3lame ogg stdc++ theora usbhid vorbis vorbisenc x264
RUN_DEPENDS-plugins= ::${BUILD_PKGPATH},-main
LIB_DEPENDS-plugins= ${LIB_DEPENDS} \
		IlmImf.>=4::graphics/openexr \
		avcodec.>=11,avformat,avutil::graphics/ffmpeg

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_ASCIIDOC="no" \
		ac_cv_path_W3M="no" \
		ac_cv_path_ENSCRIPT="no" \
		ac_cv_path_GRAPHVIZ="no"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-docs \
		--disable-gtk-doc

.include <bsd.port.mk>
