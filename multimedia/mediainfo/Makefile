COMMENT=	utility for reading information from audio/video files

VERSION=	21.09
PKGNAME=	mediainfo-${VERSION}
CATEGORIES=	multimedia

HOMEPAGE=	https://mediaarea.net/en/MediaInfo

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c m mediainfo pthread z zen

MASTER_SITES=	https://mediaarea.net/download/source/mediainfo/${VERSION}/
DISTFILES=	mediainfo_${VERSION}.tar.xz

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	devel/libzen \
		multimedia/libmediainfo

CONFIGURE_STYLE=autoreconf

DEBUG_PACKAGES=	${BUILD_PACKAGES}

AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.16
AUTOCONF_DIR=	${WRKBUILD}

WRKDIST=	${WRKDIR}/MediaInfo
WRKBUILD=	${WRKSRC}/Project/GNU/CLI

.include <bsd.port.mk>
