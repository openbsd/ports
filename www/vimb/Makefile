COMMENT =	modal webkit-based browser inspired by vim

GH_ACCOUNT =	fanglingsu
GH_PROJECT =	vimb
GH_TAGNAME =	4.0.0

CATEGORIES =	www x11

HOMEPAGE =	https://fanglingsu.github.io/vimb/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo cairo-gobject gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphene-1.0 gtk-4 harfbuzz
WANTLIB += intl javascriptcoregtk-6.0 pango-1.0 pangocairo-1.0
WANTLIB += pthread soup-3.0 vulkan webkitgtk-6.0

LIB_DEPENDS =	www/webkitgtk4,webkitgtk60

RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	Yes

CFLAGS +=	-D_BSD_SOURCE
MAKE_ENV =	V=1

FAKE_FLAGS =	PREFIX="${TRUEPREFIX}" \
		MANPREFIX="${WRKINST}/${PREFIX}/man"

.include <bsd.port.mk>
