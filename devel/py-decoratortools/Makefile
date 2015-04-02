# $OpenBSD: Makefile,v 1.14 2015/04/02 19:38:21 jasper Exp $

COMMENT=		class and function decorators

MODPY_EGG_VERSION=	1.8
DISTNAME=		DecoratorTools-${MODPY_EGG_VERSION}
PKGNAME=		py-decoratortools-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://cheeseshop.python.org/pypi/DecoratorTools

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes
EXTRACT_SUFX=		.zip

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

post-install:
	find ${WRKINST}${MODPY_SITEPKG} -type f -exec chmod 444 {} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-decoratortools
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-decoratortools/

.include <bsd.port.mk>
