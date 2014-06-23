# $OpenBSD: Makefile,v 1.13 2014/06/23 13:37:02 jasper Exp $

COMMENT=	Python API for SOAP HTTP/RPC

MODPY_EGG_VERSION=0.12.22
DISTNAME=	SOAPpy-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/^/py-/}
CATEGORIES=    	devel www

MODULES=	lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=S/SOAPpy/}
EXTRACT_SUFX=	.zip

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=	devel/py-fpconst
RUN_DEPENDS=	devel/py-fpconst \
		textproc/py-defusedxml \
		textproc/py-xml \
		www/py-wtools
TEST_DEPENDS=${RUN_DEPENDS}

# There are lots of tests, but most of them require network access
# The one below doesn't, but it has a known failure...
do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} && \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		    ./tests/SOAPtest.py

.include <bsd.port.mk>
