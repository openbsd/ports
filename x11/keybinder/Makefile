# $OpenBSD: Makefile,v 1.6 2013/11/25 21:40:39 bcallah Exp $

COMMENT-main =		library for registering keyboard shortcuts
COMMENT-python =	python bindings for keybinder

DISTNAME =		keybinder-0.3.0

PKGNAME-main =		${DISTNAME}
PKGNAME-python =	py-${DISTNAME}

REVISION-main = 	2
REVISION-python =	2

CATEGORIES =		x11 devel

SHARED_LIBS =		keybinder		0.0	# 0.0

HOMEPAGE =		https://github.com/engla/keybinder
MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# GPLv2+ 
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://devio.us/~bcallah/source/

MULTI_PACKAGES =	-main -python

WANTLIB += 		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB +=		Xi Xinerama Xrandr Xrender expat ffi fontconfig
WANTLIB +=		freetype m pixman-1 pthread-stubs xcb xcb-render xcb-shm
WANTLIB +=		z atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB +=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB +=		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre png pthread
WANTLIB +=		harfbuzz

WANTLIB-python =	${WANTLIB} keybinder

MODULES =		lang/python \
			devel/gettext

BUILD_DEPENDS =		devel/gobject-introspection \
			x11/py-gtk2
LIB_DEPENDS-main =	x11/gtk+2
LIB_DEPENDS-python =	${BUILD_PKGPATH},-main
RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS} \
			x11/py-gtk2

MODPY_RUNDEP =		No

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-lua \
			--disable-static

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

post-install:
	rm ${PREFIX}/lib/libkeybinder.la
	rm ${WRKINST}${MODPY_SITEPKG}/keybinder/_keybinder.la

.include <bsd.port.mk>
