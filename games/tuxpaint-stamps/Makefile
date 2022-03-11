PKG_ARCH=	*

COMMENT=	rubber stamps collection for Tux Paint

DISTNAME=	tuxpaint-stamps-2021.11.25
PKGNAME=	${DISTNAME:S/.//g}

CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

NO_TEST=	Yes

RUN_DEPENDS=	games/tuxpaint

INSTALL_TARGET=	install-all

FAKE_FLAGS=	DATA_PREFIX=${WRKINST}${PREFIX}/share/tuxpaint/

.include <bsd.port.mk>
