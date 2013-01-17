# $OpenBSD: Makefile,v 1.30 2013/01/17 23:40:26 fgsch Exp $

SHARED_ONLY =	Yes

COMMENT =	intelligent input bus framework

DISTNAME =	ibus-1.5.1
REVISION =	0

SHARED_LIBS =	ibus-1.0	2.0

CATEGORIES =	inputmethods chinese japanese korean

HOMEPAGE =	http://code.google.com/p/ibus/

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 \
		atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 dconf \
		drm expat ffi fontconfig freetype gdk-3 gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-3 gtk-x11-2.0 harfbuzz icudata icule \
		icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render \
		xcb-shm z

MASTER_SITES =	http://ibus.googlecode.com/files/

MODULES =	devel/dconf \
		devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS =	devel/gobject-introspection \
		devel/iso-codes \
		devel/py-gobject3 \
		lang/vala
RUN_DEPENDS =	devel/iso-codes \
		devel/desktop-file-utils \
		devel/py-gobject3 \
		devel/py-xdg \
		x11/gnome/librsvg \
		x11/gtk+2,-guic

LIB_DEPENDS =	x11/gtk+2 \
		x11/gtk+3

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --disable-gtk-doc-html \
		 --enable-introspection \
		 --enable-vala \
		 --enable-dconf
CONFIGURE_ENV =	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

FAKE_FLAGS =	bash_completiondir=${PREFIX}/share/examples/ibus/bash_completion.d \
		sysconfdir=${PREFIX}/share/examples/ibus

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/ibusshare.c

.include <bsd.port.mk>
