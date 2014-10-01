# $OpenBSD: Makefile,v 1.16 2014/10/01 08:58:23 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	universal unicode codec using iconv for Python

DISTNAME=	iconvcodec-1.1.2
PKGNAME=	py-${DISTNAME}
REVISION =	8
CATEGORIES=	converters

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cjkpython.berlios/}

MODPY_DISTUTILS_BUILDARGS=	--with-libiconv=${LOCALBASE}

NO_TEST=	Yes

MODULES=	lang/python converters/libiconv

WANTLIB=	pthread ${MODPY_WANTLIB}

.include <bsd.port.mk>
