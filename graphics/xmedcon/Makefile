# $OpenBSD: Makefile,v 1.33 2016/09/02 22:13:45 jasper Exp $

COMMENT =	medical image conversion

DISTNAME =	xmedcon-0.14.1
SHARED_LIBS =	mdc	2.3	# .2.1
CATEGORIES =	graphics

HOMEPAGE =	http://xmedcon.sourceforge.net

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes harfbuzz
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 ffi
WANTLIB += png pthread-stubs xcb z gthread-2.0 pthread xcb-render
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 xcb-shm
WANTLIB += graphite2 iconv intl

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xmedcon/}

LIB_DEPENDS =	x11/gtk+2

FAKE_FLAGS =	sysconfdir=${TRUEPREFIX}/share/examples/xmedcon

USE_GROFF =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --enable-static \
		 --sysconfdir="${SYSCONFDIR}"
CONFIGURE_ENV = CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
                         
NO_TEST =	Yes

.include <bsd.port.mk>
