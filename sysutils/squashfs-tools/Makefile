COMMENT =		tools to create and extract Squashfs filesystems

GH_TAGNAME =		4.4-git.1
GH_PROJECT =		squashfs-tools
GH_ACCOUNT =		plougher
REVISION =		0
PKGNAME =		squashfs-tools-${GH_TAGNAME:S/-git//}

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		sysutils

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c lz4 lzma lzo2 m pthread z zstd

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =		archivers/lz4 \
			archivers/lzo2 \
			archivers/xz \
			archivers/zstd

USE_GMAKE =		Yes
MAKE_FLAGS =		EXTRA_CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			XATTR_SUPPORT=0 \
			LZ4_SUPPORT=1 \
			LZMA_XZ_SUPPORT=1 \
			LZO_SUPPORT=1 \
			XZ_SUPPORT=1 \
			ZSTD_SUPPORT=1

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/squashfs-tools

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/{mk,un}squashfs ${PREFIX}/bin

.include <bsd.port.mk>
