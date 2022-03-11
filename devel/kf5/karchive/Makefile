COMMENT =		Qt5-based API for manipulating file archives
DISTNAME =		karchive-${VERSION}

SHARED_LIBS =		KF5Archive		6.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core bz2 lzma m z zstd

LIB_DEPENDS =		archivers/xz \
			archivers/bzip2

PORTHOME =		${WRKDIR}

# The following tests FAILED:
# 2 - kfiltertest (Child aborted)

.include <bsd.port.mk>
