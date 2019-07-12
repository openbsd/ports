# $OpenBSD: Makefile,v 1.110 2019/07/12 20:51:08 sthen Exp $

COMMENT=		highly configurable framework window manager

VER=			4.2
DISTNAME=		awesome-${VER}
REVISION=		1
EXTRACT_SUFX=		.tar.xz
CATEGORIES=		x11

HOMEPAGE=		https://awesomewm.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 c cairo dbus-1 execinfo \
			gdk_pixbuf-2.0 glib-2.0 gobject-2.0 \
			intl ${MODLUA_WANTLIB} m \
			startup-notification-1 xcb xcb-cursor \
			xcb-icccm xcb-keysyms xcb-randr \
			xcb-render xcb-shape xcb-util \
			xcb-xinerama xcb-xkb xcb-xrm xcb-xtest \
			xdg-basedir xkbcommon-x11 xkbcommon

MASTER_SITES=		https://github.com/awesomeWM/awesome/releases/download/v${VER}/

MODULES=		devel/cmake \
			lang/lua

MODLUA_VERSION=		5.2

LIB_DEPENDS=		devel/libexecinfo \
			devel/startup-notification \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			${MODLUA_LIB_DEPENDS} \
			x11/dbus \
			x11/libxdg-basedir \
			x11/xkbcommon

MODLUA_BUILD_DEPENDS=	devel/lua-lgi

BUILD_DEPENDS=		devel/lualdoc \
			textproc/asciidoc>=8.4.5 \
			textproc/xmlto \
			graphics/ImageMagick

MODLUA_RUN_DEPENDS=	devel/lua-lgi

RUN_DEPENDS=		devel/pango \
			misc/rlwrap \
			shells/bash

CONFIGURE_ARGS=		-DCOMPRESS_MANPAGES=off \
			-DGENERATE_DOC=off \
			-DSYSCONFDIR=${SYSCONFDIR}

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/awesomeConfig.cmake \
		${WRKSRC}/docs/06-appearance.md.lua \
		${WRKSRC}/lib/awful/completion.lua \
		${WRKSRC}/lib/awful/util.lua \
		${WRKSRC}/lib/beautiful/init.lua \
		${WRKSRC}/lib/gears/filesystem.lua \
		${WRKSRC}/lib/menubar/icon_theme.lua \
		${WRKSRC}/lib/naughty/core.lua \
		${WRKSRC}/themes/default/theme.lua \
		${WRKSRC}/themes/xresources/theme.lua \
		${WRKSRC}/utils/awesome-client

post-install:
	@rm ${WRKINST}${LOCALBASE}/share/awesome/themes/default/*.{beforesubst,orig} \
		${WRKINST}${LOCALBASE}/share/awesome/themes/xresources/*.{beforesubst,orig}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awesome
	@mv ${WRKINST}${SYSCONFDIR}/xdg/awesome/rc.lua \
		${PREFIX}/share/examples/awesome/

.include <bsd.port.mk>
