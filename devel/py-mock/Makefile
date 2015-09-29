# $OpenBSD: Makefile,v 1.7 2015/09/29 10:51:54 sthen Exp $

COMMENT=		python mocking and patching library for testing

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		mock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		http://www.voidspace.org.uk/python/mock/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mock
	cd ${WRKSRC}/html/ && pax -rw * ${PREFIX}/share/doc/py-mock/

.include <bsd.port.mk>
