# $OpenBSD: Makefile.inc,v 1.11 2006/09/18 11:59:59 espie Exp $

MAINTAINER?=		Peter Hessler <spambox@theapt.org>

# GPL
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
WANTLIB?=		X11 atk-1.0 fontconfig \
			freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
			glib-2.0 gmodule-2.0 gobject-2.0 \
			gthread-2.0 gtk-x11-2.0 iconv intl m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 \
			cairo
.if defined(EXTRA_WANTLIB)
WANTLIB+=	${EXTRA_WANTLIB}
.endif

BUILD_DEPENDS+=	:gkrellm->=2.2.0:sysutils/gkrellm/gkrellm,-client \
		:pkgconfig-*:devel/pkgconfig
RUN_DEPENDS+=	:gkrellm->=2.2.0:sysutils/gkrellm/gkrellm,-client

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}
NO_REGRESS=	Yes
USE_GMAKE=	Yes

PLUGINDIR=	${PREFIX}/lib/gkrellm2/plugins

do-install:
	${INSTALL_DATA_DIR} ${PLUGINDIR}
	${INSTALL_DATA} ${PLUGIN} ${PLUGINDIR}
