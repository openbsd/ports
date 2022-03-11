COMMENT =		Python 3.4 Enum backported to previous versions

MODPY_EGG_VERSION =	1.1.10
DISTNAME =		enum34-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes

post-install:
	mv ${WRKINST}${MODPY_SITEPKG}/enum/doc ${PREFIX}/share/doc/py-enum34
	mv ${WRKINST}${MODPY_SITEPKG}/enum/LICENSE ${PREFIX}/share/doc/py-enum34
	mv ${WRKINST}${MODPY_SITEPKG}/enum/README ${PREFIX}/share/doc/py-enum34

do-test:
	cd ${WRKSRC} && env PYTHONPATH=${WRKSRC} ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
