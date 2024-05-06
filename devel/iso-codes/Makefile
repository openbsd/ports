COMMENT=	lists of the country, language and currency iso names

V =		4.16.0
DISTNAME=	iso-codes-v${V}
PKGNAME =	iso-codes-${V}
CATEGORIES=	devel
REVISION =	0

HOMEPAGE=	https://salsa.debian.org/iso-codes-team/iso-codes

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

SITES = https://salsa.debian.org/iso-codes-team/iso-codes/-/archive/v${V}/

USE_GMAKE=	Yes

MODULES=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gettext,-tools

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
