# $OpenBSD: Makefile,v 1.1.1.1 2011/04/18 15:10:14 eric Exp $

COMMENT=		python mocking and patching library for testing

MODPY_EGG_VERSION=	0.7.0
DISTNAME=		mock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		http://www.voidspace.org.uk/python/mock/

MAINTAINER=		Eric Faurot <eric@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=m/mock/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mock
	cd ${WRKSRC}/html/ && pax -rw * ${PREFIX}/share/doc/py-mock/

.include <bsd.port.mk>
