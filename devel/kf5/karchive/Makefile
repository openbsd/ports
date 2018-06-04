# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:31 rsadowski Exp $

COMMENT =		Qt5-based API for manipulating file archives
DISTNAME =		karchive-${VERSION}

SHARED_LIBS =		KF5Archive		4.1

WANTLIB =		${COMPILER_LIBCXX} Qt5Core bz2 lzma m z

LIB_DEPENDS =		archivers/xz \
			archivers/bzip2

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
