# $OpenBSD: Makefile,v 1.6 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =		Qt5-based API for manipulating file archives
DISTNAME =		karchive-${VERSION}

SHARED_LIBS =		KF5Archive		4.0

WANTLIB =		${COMPILER_LIBCXX} Qt5Core bz2 lzma m z

LIB_DEPENDS =		archivers/xz \
			archivers/bzip2

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
