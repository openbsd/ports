# $OpenBSD: Makefile,v 1.21 2013/12/06 13:16:45 dlg Exp $

COMMENT =		enlightenment DBus component

DISTNAME =		e_dbus-1.7.9
EPOCH =			1

SO_VERSION =		4.0	# 8.6
.for _lib in edbus enotify econnman0_7x ehal eofono ebluez eukit
SHARED_LIBS +=		${_lib} ${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl dbus-1
WANTLIB += ecore ecore_con ecore_evas ecore_input ecore_input_evas
WANTLIB += ecore_ipc ecore_x eet eina evas expat fontconfig
WANTLIB += freetype fribidi glib-2.0 graphite2 harfbuzz
WANTLIB += idn jpeg m pcre pthread pthread-stubs
WANTLIB += ssl xcb z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/dbus \
			devel/fribidi \
			x11/e17/ecore>=1.7.9v2

CONFIGURE_ARGS =	--disable-doc

CONFIGURE_ENV =		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
