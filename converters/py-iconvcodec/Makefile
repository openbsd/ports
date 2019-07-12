# $OpenBSD: Makefile,v 1.20 2019/07/12 20:43:51 sthen Exp $

COMMENT=	universal unicode codec using iconv for Python

DISTNAME=	iconvcodec-1.1.2
PKGNAME=	py-${DISTNAME}
REVISION =	9
CATEGORIES=	converters

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cjkpython.berlios/}

MODPY_DISTUTILS_BUILDARGS=	--with-libiconv=${LOCALBASE}

NO_TEST=	Yes

MODULES=	lang/python

WANTLIB=	iconv pthread ${MODPY_WANTLIB}

LIB_DEPENDS=	converters/libiconv

.include <bsd.port.mk>
