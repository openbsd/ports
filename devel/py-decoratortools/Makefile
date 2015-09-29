# $OpenBSD: Makefile,v 1.15 2015/09/29 10:51:53 sthen Exp $

COMMENT=		class and function decorators

MODPY_EGG_VERSION=	1.8
DISTNAME=		DecoratorTools-${MODPY_EGG_VERSION}
PKGNAME=		py-decoratortools-${MODPY_EGG_VERSION}
REVISION=		0

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
