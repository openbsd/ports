# $OpenBSD: Makefile,v 1.8 2019/02/07 18:06:47 juanfra Exp $

COMMENT =		archiver based on tar and lzip multimembers

DISTNAME =		tarlz-0.10a

HOMEPAGE =		http://lzip.nongnu.org/tarlz.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/tarlz/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
