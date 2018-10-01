# $OpenBSD: Makefile,v 1.2 2018/10/01 21:33:47 juanfra Exp $

COMMENT =		archiver based on tar and lzip multimembers

DISTNAME =		tarlz-0.5

HOMEPAGE =		http://lzip.nongnu.org/tarlz.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/tarlz/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
