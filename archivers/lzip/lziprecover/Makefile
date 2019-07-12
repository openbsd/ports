# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:28 sthen Exp $

COMMENT =		data recovery tool and decompressor for lzip files

DISTNAME =		lziprecover-1.21

HOMEPAGE =		http://lzip.nongnu.org/lziprecover.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lziprecover/}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
