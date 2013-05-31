# $OpenBSD: Makefile,v 1.18 2013/05/31 15:34:50 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	remove attachments from emails

VERSION =	1.0.14
REVISION =	1
DISTNAME =	att_remover-${VERSION}
PKGNAME =	claws-mail-attremover-${VERSION}
MASTER_SITES =	http://www.claws-mail.org/downloads/plugins/
CATEGORIES =	mail
DIST_SUBDIR =	claws

HOMEPAGE =	http://www.claws-mail.org/plugins.php

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

LIBTOOL_FLAGS =	--tag=disable-static

MODULES =	devel/gettext

LIB_DEPENDS =	x11/gtk+2

RUN_DEPENDS =	mail/claws-mail>=3.8.0
BUILD_DEPENDS =	${RUN_DEPENDS}

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread-stubs xcb xcb-render \
		z gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0 GL Xxf86vm \
		drm xcb-shm ffi harfbuzz pthread stdc++

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--disable-static

.include <bsd.port.mk>
