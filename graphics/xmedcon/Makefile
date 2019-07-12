# $OpenBSD: Makefile,v 1.37 2019/07/12 20:47:12 sthen Exp $

COMMENT =	medical image conversion

DISTNAME =	xmedcon-0.14.1
SHARED_LIBS =	mdc	2.3	# .2.1
CATEGORIES =	graphics
REVISION =	2

HOMEPAGE =	http://xmedcon.sourceforge.net

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xmedcon/}

LIB_DEPENDS =	x11/gtk+2

FAKE_FLAGS =	sysconfdir=${TRUEPREFIX}/share/examples/xmedcon

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --enable-static \
		 --sysconfdir="${SYSCONFDIR}"
CONFIGURE_ENV = CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
                         
NO_TEST =	Yes

.include <bsd.port.mk>
