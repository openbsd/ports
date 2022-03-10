COMMENT =	decompression library for rar, tar, zip and 7z archives

V =		1.0.1
DISTNAME =	unarr-${V}

SHARED_LIBS =	unarr	0.0 # 1.0.0

CATEGORIES =	archivers

HOMEPAGE =	https://github.com/selmf/unarr/

MAINTAINER =		Omar Polo <op@omarpolo.com>

# LGPLv3
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += bz2 lzma z

MASTER_SITES =		${HOMEPAGE:=releases/download/v${V}/}

EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz

.include <bsd.port.mk>
