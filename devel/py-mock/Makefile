# $OpenBSD: Makefile,v 1.5 2013/03/28 23:36:28 rpe Exp $

COMMENT=		python mocking and patching library for testing

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		mock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		http://www.voidspace.org.uk/python/mock/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=m/mock/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mock
	cd ${WRKSRC}/html/ && pax -rw * ${PREFIX}/share/doc/py-mock/

.include <bsd.port.mk>
