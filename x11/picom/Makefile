COMMENT =	lightweight compositor for X11

DIST_TUPLE =   github yshui picom v11.2 .

CATEGORIES =	x11

# MPL 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += EGL epoxy GL X11 X11-xcb c config dbus-1 ev m pcre2-8 pixman-1
WANTLIB += pthread xcb-composite xcb-damage xcb-glx xcb-image xcb-present
WANTLIB += xcb-randr xcb-render-util xcb-render xcb-shape xcb-sync
WANTLIB += xcb-xfixes xcb-util xcb

MODULES =		devel/meson

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =		devel/uthash \
			textproc/asciidoc

RUN_DEPENDS =		x11/gtk+4,-guic \
			devel/desktop-file-utils

LIB_DEPENDS =		devel/libconfig \
			devel/libev \
			devel/pcre2 \
			x11/dbus

CONFIGURE_ARGS	+=	-Dwith_docs=true \
			-Dunittest=true \
			-Dcompton=false

CONFIGURE_ENV	+=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/{48x48,scalable}/apps
	${INSTALL_DATA} ${WRKSRC}/media/icons/48x48/compton.png \
		${PREFIX}/share/icons/hicolor/48x48/apps/picom.png
	${INSTALL_DATA} ${WRKSRC}/media/compton.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/picom.svg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/picom
	${INSTALL_DATA} ${WRKSRC}/picom.sample.conf \
		${PREFIX}/share/examples/picom

.include <bsd.port.mk>
