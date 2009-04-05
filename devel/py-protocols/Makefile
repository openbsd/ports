# $OpenBSD: Makefile,v 1.7 2009/04/05 02:07:40 martynas Exp $

COMMENT=		protocol definition, declaration and adaptation

VERSION=		1.0
REVISION=		2306
DISTNAME=		PyProtocols
PKGNAME=		py-protocols-${VERSION}r${REVISION}p2

CATEGORIES=		devel

HOMEPAGE=		http://peak.telecommunity.com/PyProtocols.html

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://mirrors.protection.cx/~martynas/python/
DISTFILES=		PyProtocols-${VERSION}a0dev_r${REVISION}${EXTRACT_SUFX}

MODULES=		lang/python
RUN_DEPENDS=		::devel/py-decoratortools
REGRESS_DEPENDS=	::devel/py-decoratortools

MODPY_SETUPTOOLS=	Yes

# make regress happy after fake
post-install:
	rm -fr ${WRKSRC}/src/PyProtocols.egg-info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-protocols/ref
	${INSTALL_DATA} ${WRKSRC}/docs/ref/*.tex ${PREFIX}/share/doc/py-protocols/ref/
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-protocols/

.include <bsd.port.mk>
