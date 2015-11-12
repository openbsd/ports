# $OpenBSD: Makefile,v 1.29 2015/11/12 14:13:35 ajacoutot Exp $

COMMENT=		Python module for GnuPG interface

MODPY_EGG_VERSION=	0.3.8
DISTNAME=		python-gnupg-${MODPY_EGG_VERSION}
PKGNAME=		py-gnupg-${MODPY_EGG_VERSION}

CATEGORIES=		security devel

HOMEPAGE=		https://bitbucket.org/vinay.sajip/python-gnupg

# BSD 3-clause
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI=		Yes

MODULES=		lang/python

BUILD_DEPENDS=		security/gnupg
RUN_DEPENDS=		security/gnupg

do-test:
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} LOGNAME=nobody ${MODPY_BIN} test_gnupg.py

.include <bsd.port.mk>
