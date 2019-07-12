# $OpenBSD: Makefile,v 1.34 2019/07/12 20:47:09 sthen Exp $

COMMENT =	tool for working with RAW images

DISTNAME =	rawstudio-1.2
REVISION =	21

CATEGORIES =	graphics

HOMEPAGE =	https://rawstudio.org/
MASTER_SITES =	${HOMEPAGE}files/release/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += exiv2 fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += intl jpeg lcms m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += tiff xml2 z

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

LIB_DEPENDS +=	graphics/exiv2 \
		graphics/lcms \
		devel/gconf2 \
		devel/gettext,-runtime \
		x11/dbus \
		x11/gtk+2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk-engines2

NO_TEST =	Yes

# PIE doesn't leave sufficient registers
.if ${MACHINE_ARCH:Mi386}
CFLAGS += -fomit-frame-pointer
.endif

.include <bsd.port.mk>
