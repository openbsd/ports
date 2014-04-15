# $OpenBSD: Makefile,v 1.75 2014/04/15 10:32:36 dcoppa Exp $

COMMENT=		highly configurable framework window manager

DISTNAME=		awesome-3.5.2
REVISION=		4
EXTRACT_SUFX=		.tar.xz
CATEGORIES=		x11

HOMEPAGE=		http://awesome.naquadah.org/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c cairo dbus-1 execinfo \
			gdk_pixbuf-2.0 glib-2.0 gobject-2.0 \
			${MODLUA_WANTLIB} m pthread \
			startup-notification-1 xcb xcb-cursor \
			xcb-icccm xcb-keysyms xcb-randr \
			xcb-render xcb-shape xcb-util \
			xcb-xinerama xcb-xtest xdg-basedir

MASTER_SITES=		${HOMEPAGE}download/

MODULES=		devel/cmake \
			devel/gettext \
			lang/lua

MODLUA_VERSION=		5.2

LIB_DEPENDS=		devel/libexecinfo \
			devel/startup-notification \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			${MODLUA_LIB_DEPENDS} \
			x11/dbus \
			x11/libxdg-basedir

MODLUA_BUILD_DEPENDS=	devel/lua-lgi \
			devel/lualdoc

BUILD_DEPENDS=		textproc/asciidoc>=8.4.5 \
			textproc/xmlto \
			graphics/ImageMagick \
			devel/doxygen

MODLUA_RUN_DEPENDS=	devel/lua-lgi

RUN_DEPENDS=		misc/rlwrap \
			shells/bash

CONFIGURE_ARGS=		-DCOMPRESS_MANPAGES=off \
			-DSYSCONFDIR=${SYSCONFDIR}

SEPARATE_BUILD=		No

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/awesomeConfig.cmake \
		${WRKSRC}/lib/naughty.lua.in \
		${WRKSRC}/lib/awful/util.lua.in \
		${WRKSRC}/lib/menubar/menu_gen.lua.in \
		${WRKSRC}/lib/menubar/utils.lua.in \
		${WRKSRC}/themes/default/theme.lua.in

post-install:
	@rm ${WRKINST}/${LOCALBASE}/share/awesome/lib/*.{beforesubst,orig} \
		${WRKINST}/${LOCALBASE}/share/awesome/lib/awful/*.{beforesubst,orig} \
		${WRKINST}/${LOCALBASE}/share/awesome/lib/awful/layout/suit/*.orig \
		${WRKINST}/${LOCALBASE}/share/awesome/lib/awful/widget/*.orig \
		${WRKINST}/${LOCALBASE}/share/awesome/lib/menubar/*.{beforesubst,orig} \
		${WRKINST}/${LOCALBASE}/share/awesome/themes/default/*.{beforesubst,orig}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awesome
	@mv ${WRKINST}/${SYSCONFDIR}/xdg/awesome/rc.lua \
		${PREFIX}/share/examples/awesome/

.include <bsd.port.mk>
