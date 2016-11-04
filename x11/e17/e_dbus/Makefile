# $OpenBSD: Makefile,v 1.25 2016/11/04 11:35:21 sthen Exp $

COMMENT =		enlightenment DBus component

DISTNAME =		e_dbus-1.7.10
EPOCH =			1
REVISION =		2

SO_VERSION =		5.0	# 8.10
.for _lib in edbus enotify econnman0_7x ehal eofono ebluez eukit
SHARED_LIBS +=		${_lib} ${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xss Xtst c cares crypto curl dbus-1 ecore ecore_con
WANTLIB += ecore_evas ecore_input ecore_input_evas ecore_ipc ecore_x eet
WANTLIB += eina evas expat fontconfig freetype fribidi glib-2.0
WANTLIB += graphite2 harfbuzz jpeg m nghttp2 pcre pthread pthread-stubs
WANTLIB += ssl xcb z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/dbus \
			devel/fribidi \
			x11/e17/ecore>=1.7.10v2

CONFIGURE_ARGS =	--disable-doc

CONFIGURE_ENV =		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
