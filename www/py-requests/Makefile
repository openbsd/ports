# $OpenBSD: Makefile,v 1.2 2012/12/01 13:39:16 chl Exp $

COMMENT=	elegant and simple HTTP library for Python

MODPY_EGG_VERSION=0.14.2
DISTNAME=	requests-${MODPY_EGG_VERSION}
PKGNAME=	py-requests-${MODPY_EGG_VERSION}

CATEGORIES=	www

HOMEPAGE=	http://python-requests.org/

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://packages.crate-cdn.com/0/e/3/3/0e3345a8ac0d712bf17bd9d3276415050c5f972265ab62993cd4540a3a1aaaef/

MODULES=	lang/python

MODPY_SETUPTOOLS= Yes
#MODPY_ADJ_FILES=test_requests.py

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
