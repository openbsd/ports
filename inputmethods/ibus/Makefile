# $OpenBSD: Makefile,v 1.43 2014/07/17 15:59:43 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	intelligent input bus framework

DISTNAME =	ibus-1.5.5

SHARED_LIBS =	ibus-1.0	4.0 # 5.504

CATEGORIES =	inputmethods chinese japanese korean

HOMEPAGE =	https://code.google.com/p/ibus/

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 	ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi \
		c cairo cairo-gobject dbus-1 dconf expat ffi fontconfig \
		freetype gdk-3 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3 \
		gtk-x11-2.0 harfbuzz m notify pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs \
		xcb xcb-render xcb-shm z

MASTER_SITES =	https://ibus.googlecode.com/files/

MODULES =	devel/dconf \
		devel/gconf2 \
		devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS =	devel/iso-codes \
		devel/py-gobject3 \
		lang/vala
RUN_DEPENDS =	devel/desktop-file-utils \
		devel/iso-codes \
		devel/py-gobject3 \
		x11/gtk+2,-guic

LIB_DEPENDS =	devel/libnotify \
		x11/gtk+2 \
		x11/gtk+3

MODGCONF2_LIBDEP =	No

USE_GMAKE =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --mandir=${PREFIX}/man \
		 --disable-gtk-doc-html \
		 --enable-introspection \
		 --enable-vala
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
