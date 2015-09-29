# $OpenBSD: Makefile,v 1.23 2015/09/29 09:02:55 edd Exp $

COMMENT=		protocol definition, declaration and adaptation

MODPY_EGG_VERSION =	1.0a0dev_r0
DISTNAME=		PyProtocols-1.0a0dev_r2306
PKGNAME=		py-protocols-1.0r2306
REVISION=		2
EPOCH=			0

WRKSRC =		${WRKDIR}/PyProtocols

CATEGORIES=		devel

HOMEPAGE=		http://peak.telecommunity.com/PyProtocols.html

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODULES=		lang/python
RUN_DEPENDS=		devel/py-decoratortools \
			devel/py-setuptools>=18.2v0
TEST_DEPENDS=		${RUN_DEPENDS}

MODPY_SETUPTOOLS=	Yes
BUILD_DEPENDS +=	devel/py-setuptools>=18.2v0

# make regress happy after fake
post-install:
	rm -fr ${WRKSRC}/src/PyProtocols.egg-info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-protocols/ref
	${INSTALL_DATA} ${WRKSRC}/docs/ref/*.tex ${PREFIX}/share/doc/py-protocols/ref/
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-protocols/

.include <bsd.port.mk>
