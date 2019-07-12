# $OpenBSD: Makefile,v 1.3 2019/07/12 20:51:15 sthen Exp $

COMMENT =		library to help in developing UIs for mobile devices

DISTNAME =		libhandy-0.0.9.1
CATEGORIES =		x11

SHARED_LIBS += handy-0.0                 0.0 # 0

MASTER_SITES =		https://distfiles.nl/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =		devel/meson

WANTLIB += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 intl
WANTLIB += m pango-1.0 pangocairo-1.0 pthread

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/gobject-introspection \
			lang/vala
LIB_DEPENDS =		x11/gtk+3

CONFIGURE_ARGS +=	-Dglade_catalog=disabled \
			-Dexamples=false

TEST_IS_INTERACTIVE =	X11

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/meson.build

.include <bsd.port.mk>
