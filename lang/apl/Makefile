COMMENT =	interpreter for the programming language APL
DISTNAME =	apl-1.8
REVISION =	0
CATEGORIES =	lang

SHARED_LIBS +=	_sql                      0.0 # 0.0
SHARED_LIBS +=	emacs                     0.1 # 0.1

HOMEPAGE =	https://www.gnu.org/software/apl/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject curses epoxy execinfo expat ffi
WANTLIB += fftw3 fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pcre2-32 pixman-1 png xcb xcb-render
WANTLIB += xcb-shm z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

COMPILER =	base-clang ports-gcc

MASTER_SITES =	${MASTER_SITE_GNU:=apl/}

LIB_DEPENDS =	devel/pcre2 \
		math/fftw3 \
		x11/gtk+3

RUN_DEPENDS =	fonts/apl-fonts

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-sqlite3 \
			--without-postgresql
CONFIGURE_ENV +=	CXX_WERROR=no \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

USE_GMAKE =	Yes

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/apl

pre-configure:
	sed -i 's,-O2,,g' ${WRKSRC}/configure \
		${WRKSRC}/src/{APs,native}/Makefile.in

.include <bsd.port.mk>
