# $OpenBSD: Makefile,v 1.6 2019/07/16 21:29:41 sthen Exp $

COMMENT =	program for statistical analysis of sampled data
DISTNAME =	pspp-1.2.0
REVISION =	2
CATEGORIES =	math x11

HOMEPAGE =	https://www.gnu.org/software/pspp/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += crypto curses dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gsl gslcblas gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pq pthread
WANTLIB += readline spread-sheet-widget ssl xcb xcb-render xcb-shm xml2
WANTLIB += z

MASTER_SITES =	${MASTER_SITE_GNU:=pspp/}

BUILD_DEPENDS =	devel/gettext,-tools \
		print/texinfo

LIB_DEPENDS =	databases/postgresql \
		devel/gsl \
		devel/harfbuzz \
		math/spread-sheet-widget \
		x11/gtksourceview3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# In-base makeinfo segfaults during build.
# The readline configure tests are broken, so force it.
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-perl-module
CONFIGURE_ENV =		MAKEINFO="${LOCALBASE}/bin/gmakeinfo" \
			ac_cv_search_rl_outstream="-lreadline -ltermcap" \
			gl_cv_lib_readline=yes

USE_GMAKE =	Yes

.include <bsd.port.mk>
