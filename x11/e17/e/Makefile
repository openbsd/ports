# $OpenBSD: Makefile,v 1.55 2014/03/26 08:57:24 sthen Exp $

COMMENT =		the enlightened window manager

VERSION =		0.17.5
DISTNAME =		enlightenment-${VERSION}
REVISION =		1
EPOCH =			1

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xss Xtst c cares crypto
WANTLIB += curl dbus-1 ecore ecore_con ecore_evas ecore_file ecore_imf
WANTLIB += ecore_imf_evas ecore_input ecore_input_evas ecore_ipc
WANTLIB += ecore_x edbus edje eet efreet efreet_mime efreet_trash
WANTLIB += ehal eina eio elementary embryo emotion enotify ethumb
WANTLIB += ethumb_client eukit evas execinfo exif expat fontconfig
WANTLIB += freetype graphite2 fribidi glib-2.0 harfbuzz
WANTLIB += idn jpeg m pcre pthread pthread-stubs
WANTLIB += ssl xcb xcb-keysyms xcb-shape z ${MODLUA_WANTLIB}

MODULES +=		devel/gettext \
			lang/lua \
			x11/e17

MODE17_DESKTOP_FILE =	Yes
MODE17_PURGE_LA =	lib/enlightenment/modules

LIB_DEPENDS =		x11/e17/elementary>=1.7.9 \
			devel/libexecinfo

CONFIGURE_ARGS +=	--disable-doc \
			--disable-nls \
			--disable-pam

CONFIGURE_ENV +=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"

# Stupid crap in /src/modules/illume/dicts chokes in regular make.
# Some issue with the "(US)" bit
USE_GMAKE =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/enlightenment
	mv ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/

.include <bsd.port.mk>
