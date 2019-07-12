# $OpenBSD: Makefile,v 1.28 2019/07/12 20:45:52 sthen Exp $

COMMENT=		protocol definition, declaration and adaptation

MODPY_EGG_VERSION =	1.0a0.dev0
DISTNAME=		PyProtocols-1.0a0dev_r2306
PKGNAME=		py-protocols-1.0r2306
REVISION=		5
EPOCH=			0

WRKSRC =		${WRKDIR}/PyProtocols

CATEGORIES=		devel

HOMEPAGE=		http://peak.telecommunity.com/PyProtocols.html

# PSF/ZPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODULES=		lang/python
RUN_DEPENDS=		devel/py-decoratortools

MODPY_SETUPTOOLS=	Yes

# make regress happy after fake
post-install:
	rm -fr ${WRKSRC}/src/PyProtocols.egg-info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-protocols/ref
	${INSTALL_DATA} ${WRKSRC}/docs/ref/*.tex ${PREFIX}/share/doc/py-protocols/ref/
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-protocols/

.include <bsd.port.mk>
