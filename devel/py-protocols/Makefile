# $OpenBSD: Makefile,v 1.11 2010/08/30 22:24:15 jasper Exp $

COMMENT=		protocol definition, declaration and adaptation

VERSION=		1.0
REV=			2306
DISTNAME=		PyProtocols
PKGNAME=		py-protocols-${VERSION}r${REV}
REVISION =		4

CATEGORIES=		devel

HOMEPAGE=		http://peak.telecommunity.com/PyProtocols.html

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# PSF/ZPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://openbsddistfiles.org/martynas/python/
DISTFILES=		PyProtocols-${VERSION}a0dev_r${REV}${EXTRACT_SUFX}

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
