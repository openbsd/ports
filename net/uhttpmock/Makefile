COMMENT =		HTTP web service mocking library

VERSION =		0.11.0
DISTNAME =		uhttpmock-${VERSION}

SHARED_LIBS += uhttpmock-1.0             0.1 # 1.2.3

CATEGORIES =		net devel

HOMEPAGE =		https://gitlab.freedesktop.org/pwithnall/uhttpmock

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 soup-3.0

SITES =			http://tecnocode.co.uk/downloads/uhttpmock/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson \
			x11/gnome

MODGNOME_TOOLS =	gobject-introspection vala

BUILD_DEPENDS =		textproc/gtk-doc

LIB_DEPENDS =		devel/libsoup3

PORTHOME =		${WRKDIST}

.include <bsd.port.mk>
