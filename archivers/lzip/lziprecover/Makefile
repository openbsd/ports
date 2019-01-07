# $OpenBSD: Makefile,v 1.15 2019/01/07 18:13:00 juanfra Exp $

COMMENT =		data recovery tool and decompressor for lzip files

DISTNAME =		lziprecover-1.21

HOMEPAGE =		http://lzip.nongnu.org/lziprecover.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lziprecover/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
