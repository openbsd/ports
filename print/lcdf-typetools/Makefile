# $OpenBSD: Makefile,v 1.2 2021/09/12 20:00:26 naddy Exp $

COMMENT =	tools to manipulate font files

DISTNAME =	lcdf-typetools-2.108
REVISION =	0

CATEGORIES =	print

HOMEPAGE =	https://www.lcdf.org/type/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c kpathsea m

MASTER_SITES =		https://www.lcdf.org/type/

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		print/texlive/base,-mktexlsr

CONFIGURE_STYLE =	gnu

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
