COMMENT =		HTTP web service mocking library

VERSION =		0.5.5
DISTNAME =		uhttpmock-${VERSION}
SHARED_LIBS +=	uhttpmock-0.0        0.1      # 2.3

CATEGORIES =		net devel

HOMEPAGE =		https://gitlab.freedesktop.org/pwithnall/uhttpmock

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 soup-2.4
SITES =			https://gitlab.freedesktop.org/pwithnall/uhttpmock/-/archive/${VERSION}/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/meson \
			x11/gnome

CONFIGURE_ARGS +=	-Dgtk_doc=false

MODGNOME_TOOLS =	gobject-introspection vala

LIB_DEPENDS =		devel/libsoup

PORTHOME =		${WRKDIST}

.include <bsd.port.mk>
