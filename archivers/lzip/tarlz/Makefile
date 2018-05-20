# $OpenBSD: Makefile,v 1.1.1.1 2018/05/20 12:35:32 juanfra Exp $

COMMENT =		archiver based on tar and lzip multimembers

DISTNAME =		tarlz-0.4

HOMEPAGE =		http://lzip.nongnu.org/tarlz.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/tarlz/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
