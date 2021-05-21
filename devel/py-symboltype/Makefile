# $OpenBSD: Makefile,v 1.13 2021/05/21 19:50:30 kmos Exp $

COMMENT =		symbol type for python

MODPY_EGG_VERSION =	1.0
DISTNAME =		SymbolType-${MODPY_EGG_VERSION}
PKGNAME =		py-symboltype-${MODPY_EGG_VERSION}
REVISION =		5

CATEGORIES =		devel

HOMEPAGE =		http://peak.telecommunity.com/DevCenter/SymbolType

# PSF
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
EXTRACT_SUFX =		.zip
UNZIP =			unzip -a

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS =	Yes

post-extract:
	@find ${WRKSRC} -type f -exec chmod 644 {} +

post-install:
	rm ${WRKSRC}/SymbolType.egg-info/dependency_links.txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-symboltype
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-symboltype/

.include <bsd.port.mk>
