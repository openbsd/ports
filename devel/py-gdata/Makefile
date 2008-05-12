# $OpenBSD: Makefile,v 1.1.1.1 2008/05/12 14:07:35 ajacoutot Exp $

COMMENT=	Google data Python client library

MODPY_EGG_VERSION=1.0.13
DISTNAME=	gdata.py-${MODPY_EGG_VERSION}
PKGNAME=	py-gdata-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://code.google.com/p/gdata-python-client/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://gdata-python-client.googlecode.com/files/

MODULES=	lang/python

REGRESS_IS_INTERACTIVE=	Yes

do-regress: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./run_all_tests.py

.include <bsd.port.mk>
