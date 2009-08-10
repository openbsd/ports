# $OpenBSD: Makefile,v 1.15 2009/08/10 06:31:44 kili Exp $

SHARED_ONLY=	Yes

COMMENT-main=	graph based image processing framework
COMMENT-plugins=gegl plugins

V=		0.0.22
DISTNAME=	gegl-${V}
CATEGORIES=	graphics devel

PKGNAME-main=	gegl-${V}p0
PKGNAME-plugins=gegl-plugins-${V}p2

SHARED_LIBS=	gegl-0.0	2.0 # .22.0

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
		gio-2.0 gobject-2.0 gthread-2.0 m pcre pthread-stubs xcb z

MODULES=	devel/gettext

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

USE_GMAKE=	Yes
USE_X11=	Yes

WANTLIB-main=	${WANTLIB} Xcomposite Xcursor Xdamage Xfixes Xi \
		Xinerama atk-1.0 bz2 c cairo croco-0.6 expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glitz gsf-1 gtk-x11-2.0 jpeg pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread xml2
LIB_DEPENDS-main= ${LIB_DEPENDS} \
		rsvg-2::x11/gnome/librsvg \
		babl-0.0::graphics/babl

WANTLIB-plugins=${WANTLIB} Half Iex IlmThread Imath SDL a52 bz2 faac faad \
		mp3lame ogg sndio stdc++ theora usbhid vorbis vorbisenc \
		x264 oil-0.3 schroedinger-1.0
RUN_DEPENDS-plugins= ::${BUILD_PKGPATH},-main
LIB_DEPENDS-plugins= ${LIB_DEPENDS} \
		IlmImf.>=4::graphics/openexr \
		avcodec.>=13.1,avformat.>=12,avutil.>=6:ffmpeg->=20080620p10:graphics/ffmpeg

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_ASCIIDOC="no" \
		ac_cv_path_W3M="no" \
		ac_cv_path_ENSCRIPT="no" \
		ac_cv_prog_RUBY=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-docs \
		--disable-gtk-doc \
		--with-libopenraw=no \
		--with-graphviz=no \
		--with-libv4l=no \
		--with-libspiro=no

.include <bsd.port.mk>
