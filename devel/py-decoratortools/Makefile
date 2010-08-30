# $OpenBSD: Makefile,v 1.8 2010/08/30 22:24:15 jasper Exp $

COMMENT=		class and function decorators

VERSION=		1.7
DISTNAME=		DecoratorTools-${VERSION}
PKGNAME=		py-decoratortools-${VERSION}
REVISION =		1

CATEGORIES=		devel

HOMEPAGE=		http://cheeseshop.python.org/pypi/DecoratorTools

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=D/DecoratorTools/}
EXTRACT_SUFX=		.zip

MODULES=		lang/python

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

post-install:
	find ${WRKINST}${MODPY_SITEPKG} -type f -exec chmod 444 {} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-decoratortools
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-decoratortools/

.include <bsd.port.mk>
