# $OpenBSD: Makefile,v 1.1.1.1 2009/04/05 00:55:00 martynas Exp $

COMMENT =		symbol type for python

MODPY_EGG_VERSION =	1.0
DISTNAME =		SymbolType-${MODPY_EGG_VERSION}
PKGNAME =		py-symboltype-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://peak.telecommunity.com/DevCenter/SymbolType

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# PSF
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=S/SymbolType/}
EXTRACT_SUFX =		.zip
UNZIP =			unzip -a

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

post-extract:
	@find ${WRKSRC} -type f -exec chmod 644 {} \;

post-install:
	@rm -f ${WRKSRC}/SymbolType.egg-info/dependency_links.txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-symboltype
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-symboltype/

.include <bsd.port.mk>
