# $OpenBSD: Makefile,v 1.27 2015/04/21 18:24:22 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	fast array facility to the Python language

VERSION=	23.1
DISTNAME=	Numeric-${VERSION}
PKGNAME=	py-${DISTNAME}
REVISION =	9
CATEGORIES=	math

HOMEPAGE=	http://people.csail.mit.edu/jrennie/python/numeric/

# Python License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += m pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy/}

MODULES=	lang/python

do-test:
	cd ${WRKSRC}/Test && ${MODPY_BIN} -i test.py

.include <bsd.port.mk>
