# $OpenBSD: Makefile,v 1.131 2021/11/12 16:06:07 sthen Exp $

COMMENT=	improved dynamic tiling window manager

DISTNAME=	i3-4.20.1

CATEGORIES=	x11

HOMEPAGE=	https://i3wm.org/

# BSD
PERMIT_PACKAGE=	Yes

# XXX use of pledge has been neutered. For more details see
# https://marc.info/?l=openbsd-ports&m=156762440931634&w=2
WANTLIB += c cairo ev glib-2.0 gobject-2.0 iconv m pango-1.0 pangocairo-1.0
WANTLIB += pcre startup-notification-1 xcb xcb-cursor xcb-icccm
WANTLIB += xcb-keysyms xcb-randr xcb-shape xcb-util xcb-xinerama
WANTLIB += xcb-xkb xcb-xrm xkbcommon xkbcommon-x11 yajl

# C11
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MASTER_SITES=	${HOMEPAGE}/downloads/
EXTRACT_SUFX=	.tar.xz
DEBUG_PACKAGES= ${BUILD_PACKAGES}

LIB_DEPENDS=	devel/libev \
		devel/libyajl>=2.0.0 \
		devel/pango \
		devel/pcre \
		devel/startup-notification \
		x11/xkbcommon
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/dmenu \
		x11/i3status \
		x11/p5-AnyEvent-I3

# Tests now use the X11::XCB Perl module, not yet in ports and a bit complex
#TEST_DEPENDS=	x11/p5-AnyEvent-I3
NO_TEST=	Yes

MODULES=	devel/meson

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/config \
		${WRKSRC}/etc/config.keycodes \
		${WRKSRC}/i3-dmenu-desktop \
		${WRKSRC}/i3-nagbar/main.c \
		${WRKSRC}/libi3/get_config_path.c \
		${WRKSRC}/libi3/get_exe_path.c \
		${WRKSRC}/man/i3-config-wizard.man \
		${WRKSRC}/man/i3.man

post-install:
	rm ${WRKINST}/etc/i3/*{${PATCHORIG},.beforesubst}
	mv ${WRKINST}/etc/i3 ${PREFIX}/share/examples/

.include <bsd.port.mk>
