# $OpenBSD: Makefile,v 1.3 2019/07/12 20:51:14 sthen Exp $

# see https://github.com/i3/i3/issues/3085
COMMENT =	improved dynamic tiling window manager, fork with mouse drag

GH_ACCOUNT=	orestisf1993
GH_PROJECT=	i3
GH_COMMIT=	baff612902cc26a1760347b70cc3607a88579ebe

DISTNAME =	i3-mousedrag-4.16pre20180825

CATEGORIES =	x11

HOMEPAGE =	https://i3wm.org/

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c cairo ev glib-2.0 gobject-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pcre pthread startup-notification-1 xcb
WANTLIB += xcb-cursor xcb-icccm xcb-keysyms xcb-randr xcb-shape
WANTLIB += xcb-util xcb-xinerama xcb-xkb xcb-xrm xkbcommon
WANTLIB += xkbcommon-x11 yajl

BUILD_DEPENDS =	textproc/asciidoc \
		textproc/xmlto

LIB_DEPENDS =	devel/libev \
		devel/libyajl>=2.0.0 \
		devel/pango \
		devel/pcre \
		devel/startup-notification \
		x11/xkbcommon
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/dmenu \
		x11/i3status \
		x11/p5-AnyEvent-I3

# Tests now use the X11::XCB Perl module, not yet in ports.
NO_TEST =	Yes
#TEST_DEPENDS =	x11/p5-AnyEvent-I3

FAKE_FLAGS =	i3confdir="${PREFIX}/share/examples/i3/"

SEPARATE_BUILD =Yes
USE_GMAKE =	Yes
CONFIGURE_ARGS =--enable-builddir=${WRKBUILD} \
		--enable-debug=no
CONFIGURE_ENV =	CPPFLAGS="-I${X11BASE}/include \
			  -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib \
			 -L${LOCALBASE}/lib"

CONFIGURE_STYLE =  autoreconf
AUTOCONF_VERSION = 2.69
AUTOMAKE_VERSION = 1.15

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/config \
		${WRKSRC}/etc/config.keycodes \
		${WRKSRC}/i3-dmenu-desktop \
		${WRKSRC}/i3-nagbar/main.c \
		${WRKSRC}/libi3/get_config_path.c \
		${WRKSRC}/libi3/get_exe_path.c \
		${WRKSRC}/man/i3-config-wizard.man \
		${WRKSRC}/man/i3.man

.include <bsd.port.mk>
