# $OpenBSD: Makefile,v 1.19 2016/09/13 11:44:07 naddy Exp $

COMMENT=	universal unicode codec using iconv for Python

DISTNAME=	iconvcodec-1.1.2
PKGNAME=	py-${DISTNAME}
REVISION =	9
CATEGORIES=	converters

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cjkpython.berlios/}

MODPY_DISTUTILS_BUILDARGS=	--with-libiconv=${LOCALBASE}

NO_TEST=	Yes

MODULES=	lang/python

WANTLIB=	iconv pthread ${MODPY_WANTLIB}

LIB_DEPENDS=	converters/libiconv

.include <bsd.port.mk>
