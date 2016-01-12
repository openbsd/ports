# $OpenBSD: Makefile,v 1.21 2016/01/12 13:19:37 ajacoutot Exp $

COMMENT=		DNS toolkit for Python

MODPY_EGG_VERSION=	1.11.1
DISTNAME=		dnspython-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net
REVISION=		0

HOMEPAGE=		http://www.dnspython.org/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}kits/${MODPY_EGG_VERSION}/

MODULES=		lang/python
MODPY_ADJ_FILES=	examples/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-dnspython
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/py-dnspython

do-test:
	@cd ${WRKSRC}/tests && env PYTHONPATH=../ \
		make check PYTHON=${MODPY_BIN} 

.include <bsd.port.mk>
