# $OpenBSD: Makefile,v 1.5 2019/09/06 18:54:56 rsadowski Exp $

COMMENT =	improved dynamic tiling window manager, fork with gaps

V =		4.17
DISTNAME =	i3-gaps-${V}
REVISION =	0

CATEGORIES =	x11

HOMEPAGE =	https://i3wm.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo ev glib-2.0 gobject-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pcre pthread startup-notification-1
WANTLIB += xcb xcb-cursor xcb-icccm xcb-keysyms xcb-randr xcb-shape
WANTLIB += xcb-util xcb-xinerama xcb-xkb xcb-xrm xkbcommon xkbcommon-x11
WANTLIB += yajl

MASTER_SITES =	https://github.com/Airblader/i3/
EXTRACT_SUFX =	.tar.bz2

DISTFILES =	gaps-{releases/download/${V}/}i3-${V}${EXTRACT_SUFX}

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

WRKDIST =	${WRKDIR}/${DISTNAME:S/-gaps//}

SEPARATE_BUILD =Yes
USE_GMAKE =	Yes
CONFIGURE_STYLE =gnu
CONFIGURE_ARGS =--enable-builddir=${WRKBUILD}

CONFIGURE_ENV =	CPPFLAGS="-I${X11BASE}/include \
			  -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib \
			 -L${LOCALBASE}/lib"

.if defined(DEBUG)
CONFIGURE_ARGS +=--enable-debug
.endif

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
