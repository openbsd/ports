VERSION=	1.8
DISTNAME=	automake-${VERSION}.5
REVISION=	11
PKGSPEC=	automake->=${VERSION},<1.9

AUTOCONF_VERSION=	2.59

SUFFIX=		-${VERSION}
MAKE_FLAGS +=	MAKEINFO="makeinfo --no-split"

TEST_DEPENDS=	devel/libtool
TEST_FLAGS=	AUTOCONF_VERSION=${AUTOCONF_VERSION}

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info

.include <bsd.port.mk>
