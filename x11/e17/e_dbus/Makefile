# $OpenBSD: Makefile,v 1.20 2013/05/31 15:34:58 ajacoutot Exp $

COMMENT =		enlightenment DBus component

DISTNAME =		e_dbus-1.7.6
EPOCH = 		1
REVISION =		0

SO_VERSION =		4.0	# 8.6
.for _lib in edbus enotify econnman0_7x ehal eofono ebluez eukit
SHARED_LIBS +=		${_lib} ${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl dbus-1
WANTLIB += ecore ecore_con ecore_evas ecore_input ecore_input_evas
WANTLIB += ecore_ipc ecore_x eet eina evas expat ffi fontconfig
WANTLIB += freetype fribidi glib-2.0 gobject-2.0 graphite2 harfbuzz
WANTLIB += idn jpeg m pcre pthread pthread-stubs
WANTLIB += ssl xcb z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/dbus \
			devel/fribidi \
			x11/e17/ecore>=1.7.6v2

CONFIGURE_ARGS =	--disable-doc

CONFIGURE_ENV =		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
