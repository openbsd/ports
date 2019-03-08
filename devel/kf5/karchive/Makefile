# $OpenBSD: Makefile,v 1.9 2019/03/08 20:00:40 cwen Exp $

COMMENT =		Qt5-based API for manipulating file archives
DISTNAME =		karchive-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5Archive		4.2

WANTLIB =		${COMPILER_LIBCXX} Qt5Core bz2 lzma m z

LIB_DEPENDS =		archivers/xz \
			archivers/bzip2

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
