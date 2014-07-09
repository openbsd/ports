# $OpenBSD: Makefile,v 1.7 2014/07/09 20:49:36 bcallah Exp $

COMMENT-main =		library for registering keyboard shortcuts
COMMENT-python =	python bindings for keybinder

DISTNAME =		keybinder-0.3.0

PKGNAME-main =		${DISTNAME}
PKGNAME-python =	py-${DISTNAME}

REVISION-main = 	3
REVISION-python =	3

CATEGORIES =		x11 devel

SHARED_LIBS =		keybinder		0.0	# 0.0

HOMEPAGE =		https://github.com/engla/keybinder
MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# GPLv2+ 
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://devio.us/~bcallah/source/

MULTI_PACKAGES =	-main -python

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

WANTLIB-python =	${WANTLIB} keybinder

MODULES =		lang/python \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS =	gobject-introspection

BUILD_DEPENDS =		x11/py-gtk2
LIB_DEPENDS-main =	x11/gtk+2
LIB_DEPENDS-python =	${BUILD_PKGPATH},-main
RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS} \
			x11/py-gtk2

MODPY_RUNDEP =		No

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-lua \
			--disable-static

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

post-install:
	rm ${PREFIX}/lib/libkeybinder.la
	rm ${WRKINST}${MODPY_SITEPKG}/keybinder/_keybinder.la

.include <bsd.port.mk>
