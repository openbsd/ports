# $OpenBSD: Makefile,v 1.15 2013/05/31 19:21:31 landry Exp $

COMMENT =	Xfce4 freedesktop.org compliant menu implementation

XFCE_PROJECT =	garcon
XFCE_VERSION =	0.2.1

SHARED_LIBS +=	garcon-1 0.0

HOMEPAGE=	http://www.xfce.org/projects/libraries/

MASTER_SITES ?=	http://archive.xfce.org/src/libs/${XFCE_PROJECT:L}/${XFCE_BRANCH}/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4
LIB_DEPENDS =	x11/xfce4/libxfce4util
WANTLIB =	xfce4util gio-2.0 gmodule-2.0 glib-2.0 gobject-2.0 gthread-2.0 \
		pcre pthread z ffi

BUILD_DEPENDS =		x11/gtk+2

FAKE_FLAGS =	menudir=${PREFIX}/share/examples/garcon

.include <bsd.port.mk>
