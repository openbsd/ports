# $OpenBSD: Makefile,v 1.18 2016/03/20 16:12:22 naddy Exp $

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

MODULES=	lang/python converters/libiconv

WANTLIB=	pthread ${MODPY_WANTLIB}

.include <bsd.port.mk>
