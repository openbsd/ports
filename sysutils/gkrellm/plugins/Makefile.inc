# $OpenBSD: Makefile.inc,v 1.22 2009/08/10 06:34:29 kili Exp $

SHARED_ONLY=	Yes

MAINTAINER?=	Antoine Jacoutot <ajacoutot@openbsd.org>

CATEGORIES+=	sysutils/gkrellm

# GPLv2+
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

WANTLIB?=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread-stubs xcb z

.if defined(EXTRA_WANTLIB)
WANTLIB+=	${EXTRA_WANTLIB}
.endif

BUILD_DEPENDS+=	:gkrellm->=2.2.0:sysutils/gkrellm/gkrellm,-client
RUN_DEPENDS+=	:gkrellm->=2.2.0:sysutils/gkrellm/gkrellm,-client

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11?=	Yes

PLUGINDIR=	${PREFIX}/lib/gkrellm2/plugins

do-install:
	${INSTALL_DATA_DIR} ${PLUGINDIR}
	${INSTALL_DATA} ${PLUGIN} ${PLUGINDIR}
