# $OpenBSD: Makefile,v 1.26 2019/04/28 08:29:50 rsadowski Exp $

COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.5.0
CATEGORIES=	multimedia
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	matroska	4.4

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} ebml m

COMPILER =	base-clang ports-gcc base-gcc

MODULES +=	devel/cmake

LIB_DEPENDS +=	textproc/libebml>=1.3.7

NO_TEST =	Yes

.include <bsd.port.mk>
