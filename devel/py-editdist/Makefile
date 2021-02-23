# $OpenBSD: Makefile,v 1.13 2021/02/23 19:39:18 sthen Exp $

COMMENT=		calculate Levenshtein distance between two strings

MODPY_EGG_VERSION=	0.3
DISTNAME=		py-editdist-${MODPY_EGG_VERSION}
REVISION =		6
CATEGORIES=    		devel

HOMEPAGE=		http://www.mindrot.org/projects/py-editdist/

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MASTER_SITES=		http://www.mindrot.org/files/py-editdist/

MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test.py

TESTLIBDIR =		lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/
TEST_ENV =		PYTHONPATH=${WRKSRC}/${TESTLIBDIR}

.include <bsd.port.mk>
