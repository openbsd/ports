# $OpenBSD: Makefile,v 1.27 2015/04/02 14:21:16 jasper Exp $

COMMENT=	Python module for GnuPG interface

VERSION=	0.3.7
DISTNAME=	python-gnupg-${VERSION}
PKGNAME=	py-gnupg-${VERSION}

CATEGORIES=	security devel

HOMEPAGE=	https://bitbucket.org/vinay.sajip/python-gnupg

# BSD 3-clause
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes
MODPY_PI_DIR =	p/python-gnupg

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/gnupg

do-test:
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} LOGNAME=nobody ${MODPY_BIN} test_gnupg.py

.include <bsd.port.mk>
