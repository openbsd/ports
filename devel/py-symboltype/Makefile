# $OpenBSD: Makefile,v 1.11 2020/03/20 16:44:23 naddy Exp $

COMMENT =		symbol type for python

MODPY_EGG_VERSION =	1.0
DISTNAME =		SymbolType-${MODPY_EGG_VERSION}
PKGNAME =		py-symboltype-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES =		devel

HOMEPAGE =		http://peak.telecommunity.com/DevCenter/SymbolType

# PSF
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
EXTRACT_SUFX =		.zip
UNZIP =			unzip -a

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

post-extract:
	@find ${WRKSRC} -type f -exec chmod 644 {} +

post-install:
	rm ${WRKSRC}/SymbolType.egg-info/dependency_links.txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-symboltype
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-symboltype/

.include <bsd.port.mk>
