COMMENT=	read metadata from media files

VERSION=	25.04
PKGNAME=	libmediainfo-${VERSION}
SHARED_LIBS=	mediainfo	19.0 # 0.0
CATEGORIES=	multimedia

HOMEPAGE=	https://mediaarea.net/en/MediaInfo

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} m z zen

SITES=		https://mediaarea.net/download/source/libmediainfo/${VERSION}/
DISTFILES=	libmediainfo_${VERSION}.tar.xz

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	devel/libzen

CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS=	--enable-static

DEBUG_PACKAGES=	${BUILD_PACKAGES}

AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.16
AUTOCONF_DIR=	${WRKBUILD}

WRKDIST=	${WRKDIR}/MediaInfoLib
WRKBUILD=	${WRKSRC}/Project/GNU/Library

# tests fetch files from the Internet
NO_TEST=	Yes

.include <bsd.port.mk>
