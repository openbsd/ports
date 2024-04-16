COMMENT =	graphical frontend for mednafen

DISTNAME =	mednaffe-$V
V =		0.9.3

CATEGORIES =	emulators

HOMEPAGE =	https://github.com/AmatCoder/mednaffe/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0

SITES =		https://github.com/AmatCoder/mednaffe/releases/download/$V/

RUN_DEPENDS =		devel/desktop-file-utils \
			emulators/mednafen \
			x11/gtk+4,-guic
LIB_DEPENDS =		x11/gtk+3

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
