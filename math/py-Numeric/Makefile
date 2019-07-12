# $OpenBSD: Makefile,v 1.29 2019/07/12 20:47:46 sthen Exp $

COMMENT=	fast array facility to the Python language

VERSION=	23.1
DISTNAME=	Numeric-${VERSION}
PKGNAME=	py-${DISTNAME}
REVISION =	9
CATEGORIES=	math

HOMEPAGE=	http://people.csail.mit.edu/jrennie/python/numeric/

# Python License
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += m pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy/}

MODULES=	lang/python

do-test:
	cd ${WRKSRC}/Test && ${MODPY_BIN} -i test.py

.include <bsd.port.mk>
