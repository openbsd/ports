COMMENT =	program for statistical analysis of sampled data
DISTNAME =	pspp-1.4.1
REVISION =	6
CATEGORIES =	math x11

HOMEPAGE =	https://www.gnu.org/software/pspp/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject crypto curses
WANTLIB += dbus-1 epoll-shim epoxy execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gsl gslcblas gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 harfbuzz iconv intl jpeg lzma
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png pq readline spread-sheet-widget ssl wayland-client
WANTLIB += wayland-cursor wayland-egl xcb xcb-render xcb-shm xkbcommon
WANTLIB += xml2 z

SITES =		${SITE_GNU:=pspp/}

COMPILER =	base-clang ports-gcc

MODULES =	lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS =	devel/gettext,-tools \
		print/texinfo

LIB_DEPENDS =	databases/postgresql \
		devel/gsl \
		devel/harfbuzz \
		math/spread-sheet-widget \
		x11/gtksourceview3

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

# In-base makeinfo segfaults during build.
# The readline configure tests are broken, so force it.
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-perl-module
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -D_UC_RESTRICT=restrict" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			MAKEINFO="${LOCALBASE}/bin/gmakeinfo" \
			ac_cv_search_rl_outstream="-lreadline -ltermcap" \
			gl_cv_lib_readline=yes

USE_GMAKE =	Yes

.include <bsd.port.mk>
