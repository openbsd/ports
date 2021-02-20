# $OpenBSD: Makefile,v 1.17 2021/02/20 13:18:07 fcambus Exp $

COMMENT =		data recovery tool and decompressor for lzip files

DISTNAME =		lziprecover-1.22

HOMEPAGE =		http://lzip.nongnu.org/lziprecover.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lziprecover/}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
