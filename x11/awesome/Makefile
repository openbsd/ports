# $OpenBSD: Makefile,v 1.111 2020/11/28 08:10:44 rsadowski Exp $

COMMENT=		highly configurable framework window manager

V=			4.3
DISTNAME=		awesome-${V}
CATEGORIES=		x11

HOMEPAGE=		https://awesomewm.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 c cairo dbus-1 execinfo gdk_pixbuf-2.0 glib-2.0
WANTLIB += gobject-2.0 intl lua5.3 m startup-notification-1 xcb
WANTLIB += xcb-cursor xcb-icccm xcb-keysyms xcb-randr xcb-render
WANTLIB += xcb-shape xcb-util xcb-xinerama xcb-xkb xcb-xrm xcb-xtest
WANTLIB += xdg-basedir xkbcommon xkbcommon-x11 ${MODLUA_WANTLIB}

MASTER_SITES=		https://github.com/awesomeWM/awesome/releases/download/v${V}/
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/cmake \
			lang/lua

MODLUA_VERSION=		5.3

LIB_DEPENDS=		${MODLUA_LIB_DEPENDS} \
			devel/libexecinfo \
			devel/startup-notification \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			x11/dbus \
			x11/libxdg-basedir \
			x11/xkbcommon

MODLUA_BUILD_DEPENDS=	devel/lua-lgi

BUILD_DEPENDS=		devel/lualdoc \
			devel/pango \
			graphics/ImageMagick \
			textproc/asciidoctor

MODLUA_RUN_DEPENDS=	devel/lua-lgi

RUN_DEPENDS=		misc/rlwrap \
			shells/bash

CONFIGURE_ARGS=		-DCOMPRESS_MANPAGES=off \
			-DSYSCONFDIR=${SYSCONFDIR}

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/awesomeConfig.cmake \
		${WRKSRC}/tests/examples/CMakeLists.txt \
		${WRKSRC}/lib/naughty/core.lua \
		${WRKSRC}/lib/menubar/utils.lua \
		${WRKSRC}/lib/menubar/icon_theme.lua \
		${WRKSRC}/lib/gears/filesystem.lua \
		${WRKSRC}/lib/beautiful/init.lua \
		${WRKSRC}/lib/awful/util.lua \
		${WRKSRC}/lib/awful/completion.lua \
		${WRKSRC}/docs/build_rules_index.lua \
		${WRKSRC}/docs/90-FAQ.md \
		${WRKSRC}/docs/07-my-first-awesome.md \
		${WRKSRC}/docs/06-appearance.md.lua \
		${WRKSRC}/docs/05-awesomerc.md.lua \
		${WRKSRC}/utils/awesome-client \
		${WRKSRC}/themes/xresources/theme.lua \
		${WRKSRC}/themes/gtk/theme.lua \
		${WRKSRC}/themes/default/theme.lua

post-install:
	@rm ${WRKINST}${LOCALBASE}/share/awesome/themes/*/*.{beforesubst,orig}

	@mv ${WRKINST}${LOCALBASE}/share/man/man? \
		${WRKINST}${LOCALBASE}/man

	@rm -rf ${WRKINST}${LOCALBASE}/share/man

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awesome
	@mv ${WRKINST}${SYSCONFDIR}/xdg/awesome/rc.lua \
		${PREFIX}/share/examples/awesome/

.include <bsd.port.mk>
