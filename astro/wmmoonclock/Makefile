COMMENT=		wm-dockapp; shows the moon phase

DISTNAME=		wmmoonclock-1.30
CATEGORIES=		astro x11 x11/windowmaker

HOMEPAGE=		https://www.dockapps.net/wmmoonclock

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		https://www.dockapps.net/download/

RUN_DEPENDS=		devel/desktop-file-utils

CONFIGURE_STYLE=		gnu

NO_TEST=		Yes

# Keep the legacy binary name (and match with the manpage name)
post-install:
	cd ${PREFIX}/bin && mv wmmoonclock wmMoonClock

.include <bsd.port.mk>
