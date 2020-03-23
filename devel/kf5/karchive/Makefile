# $OpenBSD: Makefile,v 1.11 2020/03/23 18:01:04 rsadowski Exp $

COMMENT =		Qt5-based API for manipulating file archives
DISTNAME =		karchive-${VERSION}

SHARED_LIBS =		KF5Archive		5.0

WANTLIB =		${COMPILER_LIBCXX} Qt5Core bz2 lzma m z

LIB_DEPENDS =		archivers/xz \
			archivers/bzip2

PORTHOME =		${WRKDIR}

# The following tests FAILED:
# 2 - kfiltertest (Child aborted)

.include <bsd.port.mk>
