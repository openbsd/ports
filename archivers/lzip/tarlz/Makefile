# $OpenBSD: Makefile,v 1.5 2018/12/16 00:10:43 juanfra Exp $

COMMENT =		archiver based on tar and lzip multimembers

DISTNAME =		tarlz-0.7

HOMEPAGE =		http://lzip.nongnu.org/tarlz.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/tarlz/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
