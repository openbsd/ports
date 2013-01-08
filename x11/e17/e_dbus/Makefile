# $OpenBSD: Makefile,v 1.14 2013/01/08 08:13:28 jasper Exp $

COMMENT =		enlightenment DBus component
DISTNAME =		e_dbus-1.7.4

REVISION = 		1
EPOCH = 		1

SO_VERSION =		3.0	# 8.4
.for _lib in edbus enotify econnman0_7x ehal eofono ebluez eukit
SHARED_LIBS +=		${_lib} ${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_LIBTOOL =		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl dbus-1
WANTLIB += ecore ecore_con ecore_evas ecore_input ecore_input_evas
WANTLIB += ecore_ipc ecore_x eet eina evas expat ffi fontconfig
WANTLIB += freetype fribidi glib-2.0 gobject-2.0 gthread-2.0 harfbuzz
WANTLIB += icudata icule icuuc idn jpeg m pcre pthread ssl xcb z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/dbus \
			devel/fribidi \
			x11/e17/ecore>=3.0

CONFIGURE_ARGS =	--disable-doc

CONFIGURE_ENV =		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
