UNLINKED = kf6
COMMENT =	Qt6-based API for manipulating file archives
DISTNAME =	karchive-${VERSION}

SHARED_LIBS +=  KF6Archive                0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core bz2 lzma m z zstd

LIB_DEPENDS =	archivers/xz \
		archivers/zstd \
		archivers/bzip2

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
