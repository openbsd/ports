# $OpenBSD: Makefile,v 1.10 2012/04/30 12:46:58 landry Exp $

COMMENT =	Xfce4 freedesktop.org compliant menu implementation

XFCE_PROJECT =	garcon
XFCE_VERSION =	0.2.0

SHARED_LIBS +=	garcon-1 0.0

HOMEPAGE=	http://www.xfce.org/projects/libraries/

MASTER_SITES ?=	http://archive.xfce.org/src/libs/${XFCE_PROJECT:L}/${XFCE_BRANCH}/

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES =	x11/xfce4
LIB_DEPENDS =	x11/xfce4/libxfce4util
WANTLIB =	xfce4util gio-2.0 gmodule-2.0 glib-2.0 gobject-2.0 gthread-2.0 \
		pcre z ffi

BUILD_DEPENDS =		x11/gtk+2
# regress tests needs the menu file provided by xfce-utils
REGRESS_DEPENDS =	x11/xfce4/xfce-utils

CONFIGURE_ARGS +=	--disable-linker-opts

FAKE_FLAGS =	menudir=${PREFIX}/share/examples/garcon

.include <bsd.port.mk>
