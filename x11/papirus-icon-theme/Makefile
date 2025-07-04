COMMENT=	papirus icon theme
DIST_TUPLE=	github PapirusDevelopmentTeam papirus-icon-theme 20250501  .
CATEGORIES=	x11

REVISION=	0

MAINTAINER=	Rafael Sadowski <rasdowski@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes
PKG_ARCH=	*

NO_BUILD=	yes
RUN_DEPENDS=	x11/gtk+4,-guic

USE_GMAKE=	yes

FAKE_FLAGS=	PREFIX="${TRUEPREFIX}"

.include <bsd.port.mk>
