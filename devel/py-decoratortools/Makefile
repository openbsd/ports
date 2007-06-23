# $OpenBSD: Makefile,v 1.1.1.1 2007/06/23 21:34:44 martynas Exp $

COMMENT=		"class and function decorators"

V=			1.4
DISTNAME=		DecoratorTools-${V}
PKGNAME=		py-decoratortools-${V}

CATEGORIES=		devel lang/python

HOMEPAGE=		http://cheeseshop.python.org/pypi/DecoratorTools

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/D/DecoratorTools/
EXTRACT_SUFX=		.zip

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

post-install:
	find ${WRKINST}${MODPY_SITEPKG} -type f -exec chmod 444 {} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-decoratortools
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-decoratortools/

.include <bsd.port.mk>
