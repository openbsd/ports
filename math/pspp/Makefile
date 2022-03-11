COMMENT =	program for statistical analysis of sampled data
DISTNAME =	pspp-1.4.1
REVISION =	0
CATEGORIES =	math x11

HOMEPAGE =	https://www.gnu.org/software/pspp/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject crypto curses epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gsl gslcblas
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz iconv
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pq readline spread-sheet-widget ssl xcb
WANTLIB += xcb-render xcb-shm xml2 z

MASTER_SITES =	${MASTER_SITE_GNU:=pspp/}

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
		x11/gtk+3,-guic

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
