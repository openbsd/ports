# $OpenBSD: Makefile,v 1.3 2006/10/12 14:09:32 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"c++ cross-platform GUI toolkit"

DISTNAME=	wxWidgets-2.6.3
PKGNAME=	wxWidgets-gtk2-2.6.3
SHARED_LIBS=	wx_base		0.0	\
		wx_base_net	0.0	\
		wx_base_odbc	0.0	\
		wx_base_xml	0.0	\
		wx_gtk2_adv	0.0	\
		wx_gtk2_core	0.0	\
		wx_gtk2_dbgrid	0.0	\
		wx_gtk2_gl	0.0	\
		wx_gtk2_html	0.0	\
		wx_gtk2_media	0.0	\
		wx_gtk2_qa	0.0	\
		wx_gtk2_xrc	0.0	\
		wx_gtk2_fl	0.0	\
		wx_gtk2_gizmos	0.0	\
		wx_gtk2_gizmos_xrc	0.0	\
		wx_gtk2_mmedia	0.0	\
		wx_gtk2_ogl	0.0	\
		wx_gtk2_plot	0.0	\
		wx_gtk2_stc	0.0	\
		wx_gtk2_svg	0.0	\
		wx_gtk2_deprecated	0.0	\
		wx_gtk2_animate	0.0
CATEGORIES=	x11

HOMEPAGE=	http://www.wxwidgets.org/

# modified LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wxwindows/}

MODULES=	gettext
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes
VMEM_WARNING=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		::devel/cppunit
LIB_DEPENDS=	mspack::archivers/libmspack \
		SDL::devel/sdl \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		iodbc::databases/iodbc \
		esd::audio/esound
		
WANTLIB=	X11 Xext Xinerama Xxf86vm c fontconfig freetype m pthread \
		stdc++ usbhid z expat ossaudio jpeg png tiff \
		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		pango-1.0 pangoft2-1.0 \
		atk-1.0 GL GLU

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
		--enable-unicode

MAKE_FLAGS=	WXUNICODEFLAG=""
FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST}
FAKE_FLAGS+=	WXUNICODEFLAG=""

.include <bsd.port.mk>
