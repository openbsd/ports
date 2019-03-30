# $OpenBSD: Makefile,v 1.10 2019/03/30 09:13:48 rsadowski Exp $

COMMENT =		Qt5-based API for manipulating file archives
DISTNAME =		karchive-${VERSION}

SHARED_LIBS =		KF5Archive		4.4

WANTLIB =		${COMPILER_LIBCXX} Qt5Core bz2 lzma m z

LIB_DEPENDS =		archivers/xz \
			archivers/bzip2

PORTHOME =		${WRKDIR}

# The following tests FAILED:
# 2 - kfiltertest (Child aborted)

.include <bsd.port.mk>
