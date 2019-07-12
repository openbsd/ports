# $OpenBSD: Makefile,v 1.24 2019/07/12 20:50:00 sthen Exp $

COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.3.7
CATEGORIES=	textproc
MASTER_SITES=	https://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ebml	3.2

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc base-gcc

MODULES +=	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
