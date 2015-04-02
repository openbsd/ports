# $OpenBSD: Makefile,v 1.13 2015/04/02 14:21:14 jasper Exp $

COMMENT=		class and function decorators

VERSION=		1.8
DISTNAME=		DecoratorTools-${VERSION}
PKGNAME=		py-decoratortools-${VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://cheeseshop.python.org/pypi/DecoratorTools

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		D/DecoratorTools
EXTRACT_SUFX=		.zip

MODULES=		lang/python

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

post-install:
	find ${WRKINST}${MODPY_SITEPKG} -type f -exec chmod 444 {} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-decoratortools
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-decoratortools/

.include <bsd.port.mk>
