# $OpenBSD: Makefile.inc,v 1.31 2015/05/05 17:00:19 sthen Exp $

SHARED_ONLY=	Yes

CATEGORIES+=	sysutils

# GPLv2+
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

.if ! defined(WANTLIB)
MODULES +=	devel/gettext
WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread pthread-stubs xcb xcb-render z \
		GL X11-xcb Xxf86vm drm xcb-shm ${MODGETTEXT_WANTLIB}
.endif

.if defined(EXTRA_WANTLIB)
WANTLIB+=	${EXTRA_WANTLIB}
.endif

BUILD_DEPENDS+=	sysutils/gkrellm/gkrellm,-client>=2.2.0
RUN_DEPENDS+=	sysutils/gkrellm/gkrellm,-client>=2.2.0

NO_TEST=	Yes
USE_GMAKE=	Yes

PLUGINDIR=	${PREFIX}/lib/gkrellm2/plugins

do-install:
	${INSTALL_DATA_DIR} ${PLUGINDIR}
	${INSTALL_DATA} ${PLUGIN} ${PLUGINDIR}
