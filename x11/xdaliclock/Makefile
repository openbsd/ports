COMMENT=	rather neat animated clock

DISTNAME=	xdaliclock-2.48
CATEGORIES=	x11

HOMEPAGE=	https://www.jwz.org/xdaliclock/

# License: BSD
PERMIT_PACKAGE=	Yes

WANTLIB += EGL GL X11 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0

SITES=			https://www.jwz.org/xdaliclock/

MODULES=		devel/dconf

USE_GMAKE=		Yes

LIB_DEPENDS=		x11/gtk+3

RUN_DEPENDS=		devel/desktop-file-utils

MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}
WRKSRC=			${WRKDIST}/X11
CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

.include <bsd.port.mk>
