# $OpenBSD: Makefile,v 1.8 2018/10/22 20:30:41 rsadowski Exp $

COMMENT =		Qt5-based API for manipulating file archives
DISTNAME =		karchive-${VERSION}

SHARED_LIBS =		KF5Archive		4.2

WANTLIB =		${COMPILER_LIBCXX} Qt5Core bz2 lzma m z

LIB_DEPENDS =		archivers/xz \
			archivers/bzip2

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
