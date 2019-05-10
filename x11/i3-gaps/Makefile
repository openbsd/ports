# $OpenBSD: Makefile,v 1.2 2019/05/10 20:22:59 naddy Exp $

COMMENT =	improved dynamic tiling window manager, fork with gaps

V =		4.16.1
DISTNAME =	i3-gaps-${V}

CATEGORIES =	x11

HOMEPAGE =	https://i3wm.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c cairo ev glib-2.0 gobject-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pcre pthread startup-notification-1
WANTLIB += xcb xcb-cursor xcb-icccm xcb-keysyms xcb-randr xcb-util
WANTLIB += xcb-xinerama xcb-xkb xcb-xrm xkbcommon xkbcommon-x11
WANTLIB += yajl

MASTER_SITES =	https://github.com/Airblader/i3/
EXTRACT_SUFX =	.tar.bz2

DISTFILES =	gaps-{releases/download/${V}/}i3-${V}${EXTRACT_SUFX}

BUILD_DEPENDS =	textproc/asciidoc \
		textproc/xmlto

LIB_DEPENDS =	devel/libev \
		devel/libyajl \
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
CONFIGURE_ARGS =--enable-builddir=${WRKBUILD} \
		--enable-debug=no
CONFIGURE_ENV =	CPPFLAGS="-I${X11BASE}/include \
			  -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib \
			 -L${LOCALBASE}/lib"

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
