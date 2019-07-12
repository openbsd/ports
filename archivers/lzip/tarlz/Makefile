# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:29 sthen Exp $

COMMENT =		archiver based on tar and lzip multimembers

DISTNAME =		tarlz-0.11

HOMEPAGE =		http://lzip.nongnu.org/tarlz.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/tarlz/}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
