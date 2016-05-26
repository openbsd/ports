# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:57 zhuk Exp $

COMMENT =		Qt5-based API for manipulating file archives
DISTNAME =		karchive-${VERSION}

SHARED_LIBS =		KF5Archive		0.0

WANTLIB =		Qt5Core bz2 lzma m z

LIB_DEPENDS =		archivers/xz \
			archivers/bzip2

.include <bsd.port.mk>
