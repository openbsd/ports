# $OpenBSD: Makefile,v 1.28 2015/04/02 19:38:21 jasper Exp $

COMMENT=	Python module for GnuPG interface

MODPY_EGG_VERSION=	0.3.7
DISTNAME=		python-gnupg-${MODPY_EGG_VERSION}
PKGNAME=		py-gnupg-${MODPY_EGG_VERSION}

CATEGORIES=	security devel

HOMEPAGE=	https://bitbucket.org/vinay.sajip/python-gnupg

# BSD 3-clause
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/gnupg

do-test:
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} LOGNAME=nobody ${MODPY_BIN} test_gnupg.py

.include <bsd.port.mk>
