COMMENT=		wm-dockapp; displays the earth on an icon

DISTNAME=		wmglobe-1.3
REVISION=		7
CATEGORIES=		astro x11 x11/windowmaker

HOMEPAGE=		https://www.dockapps.net/wmglobe

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm c m z jpeg tiff png gif wraster

MASTER_SITES=		https://www.dockapps.net/download/

LIB_DEPENDS=		graphics/jpeg \
			graphics/tiff \
			graphics/png \
			graphics/giflib \
			x11/windowmaker

MAKE_ENV=		CC="${CC}"
NO_TEST=		Yes

# 20+ duplicate symbols
CFLAGS+=		-fcommon

.include <bsd.port.mk>
