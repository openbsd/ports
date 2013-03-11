# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:48 espie Exp $

COMMENT=	elegant and simple HTTP library for Python

MODPY_EGG_VERSION=1.0.4
DISTNAME=	requests-${MODPY_EGG_VERSION}
PKGNAME=	py-requests-${MODPY_EGG_VERSION}

CATEGORIES=	www

HOMEPAGE=	http://python-requests.org/

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=r/requests/}

MODULES=	lang/python

MODPY_SETUPTOOLS= Yes
#MODPY_ADJ_FILES=test_requests.py

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
