# $OpenBSD: Makefile,v 1.14 2018/10/24 14:27:57 sthen Exp $

COMMENT =		data recovery tool and decompressor for lzip files

DISTNAME =		lziprecover-1.20
REVISION =		1

HOMEPAGE =		http://lzip.nongnu.org/lziprecover.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lziprecover/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
