COMMENT=	papirus icon theme
DIST_TUPLE=	github PapirusDevelopmentTeam papirus-icon-theme 20260801 .
CATEGORIES=	x11

MAINTAINER=	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes
PKG_ARCH=	*

NO_BUILD=	yes
RUN_DEPENDS=	x11/gtk+4,-guic

USE_GMAKE=	yes

FAKE_FLAGS=	PREFIX="${TRUEPREFIX}"

.include <bsd.port.mk>
