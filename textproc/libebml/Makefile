# $OpenBSD: Makefile,v 1.25 2020/12/02 06:44:09 rsadowski Exp $

COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.4.0
CATEGORIES=	textproc
MASTER_SITES=	https://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ebml	4.0

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc base-gcc

MODULES +=	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
