COMMENT-main =		distributed builds for C, C++ and Objective C
COMMENT-gtk =		GTK+ monitor for distcc
COMMENT-server =	distcc server

VERSION =		3.4
DISTNAME =		distcc-${VERSION}
EPOCH =			0
CATEGORIES =		devel net

HOMEPAGE =		https://distcc.github.io/

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =	https://github.com/distcc/distcc/releases/download/v${VERSION}/

MULTI_PACKAGES =	-main -gtk -server

MODULES =		lang/python
MODPY_EGG_VERSION =	${VERSION}
MODPY_PYBUILD =		setuptools

# Only -main needs an RDEP
MODPY_RUNDEP =		No

WANTLIB +=		c popt pthread
LIB_DEPENDS =		devel/popt
TEST_DEPENDS =		devel/gdb

LIB_DEPENDS-main =	${LIB_DEPENDS}
RUN_DEPENDS-main +=	${MODPY_RUN_DEPENDS}
WANTLIB-main =		${WANTLIB}

WANTLIB-server =	${WANTLIB}
LIB_DEPENDS-server =	${LIB_DEPENDS}

LIB_DEPENDS-gtk =	${LIB_DEPENDS} \
			x11/gtk+3
RUN_DEPENDS-gtk =	devel/desktop-file-utils
WANTLIB-gtk +=		${WANTLIB}
WANTLIB-gtk +=		atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB-gtk +=		glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB-gtk +=		pangocairo-1.0

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--disable-Werror \
			--without-libiberty \
			--without-avahi \
			--with-gtk

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/"

pre-configure:
	cd ${WRKSRC} && sed -i -E \
	    -e 's,/usr/(bin|lib)/distcc,${PREFIX}/\1/distcc,g' \
	    man/distcc.1 man/distccd.1 update-distcc-symlinks.py \
	    src/daemon.c src/serve.c

post-install:
	rm -r ${PREFIX}/share/examples/default

pre-test:
	ln -s ${LOCALBASE}/bin/egdb ${WRKDIR}/bin/gdb

.include <bsd.port.mk>
