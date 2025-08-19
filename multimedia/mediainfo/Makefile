COMMENT=	utility for reading information from audio/video files

VERSION=	25.07
PKGNAME=	mediainfo-${VERSION}
CATEGORIES=	multimedia

HOMEPAGE=	https://mediaarea.net/en/MediaInfo

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c m mediainfo pthread z zen

SITES=		https://mediaarea.net/download/source/mediainfo/${VERSION}/
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

post-build:
	pod2man ${WRKSRC}/debian/mediainfo.pod ${WRKBUILD}/mediainfo.1

post-install:
	${INSTALL_DATA} ${WRKBUILD}/mediainfo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
