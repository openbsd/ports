# $OpenBSD: Makefile,v 1.19 2009/08/11 18:55:29 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	c++ cross-platform GUI toolkit

DISTNAME=	wxWidgets-2.8.7
PKGNAME=	wxWidgets-gtk2-2.8.7p6
SHARED_LIBS=	wx_base			1.0	\
		wx_base_net		1.0	\
		wx_base_odbc		1.0	\
		wx_base_xml		1.0	\
		wx_gtk2_adv		1.0	\
		wx_gtk2_aui		1.0	\
		wx_gtk2_core		1.0	\
		wx_gtk2_dbgrid		1.0	\
		wx_gtk2_fl		1.0	\
		wx_gtk2_gizmos		1.0	\
		wx_gtk2_gizmos_xrc	1.0	\
		wx_gtk2_gl		1.0	\
		wx_gtk2_html		1.0	\
		wx_gtk2_mmedia		1.0	\
		wx_gtk2_ogl		1.0	\
		wx_gtk2_plot		1.0	\
		wx_gtk2_qa		1.0	\
		wx_gtk2_richtext	1.0	\
		wx_gtk2_stc		1.0	\
		wx_gtk2_svg		1.0	\
		wx_gtk2_xrc		1.0
CATEGORIES=	x11

HOMEPAGE=	http://www.wxwidgets.org/

# modified LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wxwindows/}

MODULES=	devel/gettext
USE_GMAKE=	Yes
USE_X11=	Yes
VMEM_WARNING=	Yes

BUILD_DEPENDS=	::devel/cppunit
LIB_DEPENDS=	mspack::archivers/libmspack \
		SDL::devel/sdl \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		iodbc::databases/iodbc \
		esd::audio/esound

WANTLIB += GL GLU SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c expat fontconfig freetype gio-2.0 glib-2.0 glitz
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 jpeg m ossaudio
WANTLIB += pango-1.0 pangoft2-1.0 pixman-1 png pthread stdc++
WANTLIB += tiff z pthread-stubs xcb

AUTOCONF_VERSION=2.59
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${X11BASE}/include"
CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ARGS=	--disable-stl \
		--with-odbc \
		--with-libjpeg \
		--with-libtiff \
		--with-expat \
		--with-sdl \
		--with-gtk \
		--without-gnomeprint \
		--without-hildon \
		--with-opengl \
		--disable-backtrace \
		--enable-unicode

.for _l _v in ${SHARED_LIBS}
MAKE_ENV+=	LIB${_l}_VERSION=${_v}
.endfor

MAKE_FLAGS=	WXUNICODEFLAG=""

.include <bsd.port.mk>
