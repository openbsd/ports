COMMENT=	C++ utility library

VERSION=	0.4.39
PKGNAME=	libzen-${VERSION}
SHARED_LIBS=	zen		0.0 # 0.0
CATEGORIES=	devel

HOMEPAGE=	https://mediaarea.net/en/MediaInfo

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# zlib
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} m pthread

MASTER_SITES=	https://mediaarea.net/download/source/libzen/${VERSION}/
DISTFILES=	libzen_${VERSION}.tar.bz2

COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS=	--enable-static

DEBUG_PACKAGES=	${BUILD_PACKAGES}

AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.13
AUTOCONF_DIR=	${WRKBUILD}

WRKDIST=	${WRKDIR}/ZenLib
WRKBUILD=	${WRKSRC}/Project/GNU/Library

.include <bsd.port.mk>
