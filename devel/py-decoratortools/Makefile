# $OpenBSD: Makefile,v 1.19 2021/05/21 19:50:25 kmos Exp $

COMMENT=		class and function decorators

MODPY_EGG_VERSION=	1.8
DISTNAME=		DecoratorTools-${MODPY_EGG_VERSION}
PKGNAME=		py-decoratortools-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		http://cheeseshop.python.org/pypi/DecoratorTools

# PSF/ZPL
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes
EXTRACT_SUFX=		.zip

MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS=	Yes

post-install:
	find ${WRKINST}${MODPY_SITEPKG} -type f -exec chmod 444 {} +
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-decoratortools
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-decoratortools/

.include <bsd.port.mk>
