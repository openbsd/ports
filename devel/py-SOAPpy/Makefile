# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:25 espie Exp $

COMMENT=	Python API for SOAP HTTP/RPC

DISTNAME=	SOAPpy-0.11.6
PKGNAME=	${DISTNAME:S/^/py-/}
REVISION =	7
CATEGORIES=    	devel www

HOMEPAGE=	http://pywebsvcs.sourceforge.net/

MODULES=	lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pywebsvcs/}

BUILD_DEPENDS=	devel/py-fpconst
RUN_DEPENDS=	devel/py-fpconst \
		textproc/py-xml
TEST_DEPENDS=${RUN_DEPENDS}

# There are lots of tests, but most of them require network access
# The one below doesn't, but it has a known failure...
do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} && \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		    ./tests/SOAPtest.py

.include <bsd.port.mk>
