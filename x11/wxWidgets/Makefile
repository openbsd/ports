# $OpenBSD: Makefile,v 1.37 2011/12/06 10:23:37 dcoppa Exp $

SHARED_ONLY =	Yes

COMMENT =	C++ cross-platform GUI toolkit

V =		2.8.12
DISTNAME =	wxWidgets-${V}
PKGNAME =	wxWidgets-gtk2-${V}
REVISION =	1
CATEGORIES =	x11
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=wxwindows/}

SHARED_LIBS =	wx_base			2.1	\
		wx_base_net		2.1	\
		wx_base_odbc		2.1	\
		wx_base_xml		2.1	\
		wx_gtk2_adv		2.1	\
		wx_gtk2_aui		2.1	\
		wx_gtk2_core		2.1	\
		wx_gtk2_dbgrid		2.1	\
		wx_gtk2_fl		2.1	\
		wx_gtk2_gizmos		2.1	\
		wx_gtk2_gizmos_xrc	2.1	\
		wx_gtk2_gl		2.1	\
		wx_gtk2_html		2.1	\
		wx_gtk2_media		2.1	\
		wx_gtk2_ogl		2.1	\
		wx_gtk2_plot		2.1	\
		wx_gtk2_qa		2.1	\
		wx_gtk2_richtext	2.1	\
		wx_gtk2_stc		2.1	\
		wx_gtk2_svg		2.1	\
		wx_gtk2_xrc		2.1

HOMEPAGE =	http://www.wxwidgets.org/

# modified LGPL
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += GL GLU SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c expat
WANTLIB += fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstinterfaces-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-x11-2.0 iodbc jpeg m
WANTLIB += mspack pango-1.0 pangoft2-1.0 pixman-1 pthread pthread-stubs
WANTLIB += stdc++ tiff xcb xcb-render xcb-shm xml2 z

MODULES	=	devel/gettext

BUILD_DEPENDS =	devel/cppunit
LIB_DEPENDS =	archivers/libmspack \
		databases/iodbc \
		devel/sdl \
		multimedia/gstreamer-0.10/core \
		multimedia/gstreamer-0.10/plugins-base \
		x11/gtk+2
REGRESS_DEPENDS = ${BUILD_PKGPATH}>=${V}

VMEM_WARNING =	Yes

MAKE_FLAGS =	WXUNICODEFLAG=""
.for _l _v in ${SHARED_LIBS}
MAKE_ENV +=	LIB${_l}_VERSION=${_v}
.endfor

USE_GMAKE =	Yes
AUTOCONF_VERSION = 2.59
CONFIGURE_STYLE =autoconf no-autoheader
CONFIGURE_ARGS =--disable-backtrace \
		--enable-mediactrl \
		--enable-unicode \
		--with-odbc \
		--with-opengl \
		--with-sdl \
		--without-gnomeprint
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		ac_cv_lib_esd_esd_close=no

.ifdef DEBUG
CONFIGURE_ARGS += --enable-debug
.endif

do-regress:
	@cd ${WRKSRC}/tests && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} && ./test

.include <bsd.port.mk>
