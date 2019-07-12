# $OpenBSD: Makefile,v 1.15 2019/07/12 20:43:39 sthen Exp $

COMMENT =		PulseAudio volume mixer

DISTNAME =		pavucontrol-4.0
HOMEPAGE =		http://freedesktop.org/software/pulseaudio/pavucontrol/

CATEGORIES =		audio

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 atk-1.0 atkmm-1.6 c cairo cairo-gobject
WANTLIB += cairomm-1.0 canberra canberra-gtk3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0
WANTLIB += gtk-3 gtkmm-3.0 intl m pango-1.0 pangocairo-1.0 pangomm-1.4
WANTLIB += pulse pulse-mainloop-glib sigc-2.0

MASTER_SITES =		http://freedesktop.org/software/pulseaudio/pavucontrol/

MODULES =		textproc/intltool

# c++11
COMPILER =		base-clang ports-gcc

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

BUILD_DEPENDS =		www/lynx

RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		audio/libcanberra,-gtk3 \
			audio/pulseaudio \
			x11/gtk3mm

.include <bsd.port.mk>
