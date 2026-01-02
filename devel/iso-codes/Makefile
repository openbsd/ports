COMMENT=	lists of the country, language and currency iso names

V=		4.20.1
DISTNAME=	iso-codes-v${V}
PKGNAME=	iso-codes-${V}

CATEGORIES=	devel

HOMEPAGE=	https://salsa.debian.org/iso-codes-team/iso-codes

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

SITES=		https://salsa.debian.org/iso-codes-team/iso-codes/-/archive/v${V}/

USE_GMAKE=	Yes

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools

.include <bsd.port.mk>
