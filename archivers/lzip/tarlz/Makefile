# $OpenBSD: Makefile,v 1.11 2021/02/22 08:07:05 fcambus Exp $

COMMENT =		archiver based on tar and lzip multimembers

DISTNAME =		tarlz-0.19

HOMEPAGE =		http://lzip.nongnu.org/tarlz.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/tarlz/}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
