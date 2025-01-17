COMMENT=	translate ASCII punctuation characters into smart entities

MODPY_DISTV=	2.0.1
GH_ACCOUNT=	leohemsted
GH_PROJECT=	smartypants.py
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-smartypants-${MODPY_DISTV}
REVISION=	3

CATEGORIES=	textproc

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	${LOCALBASE}/bin/2to3 --write --nobackup ${WRKSRC}/tests/test_cli.py

.include <bsd.port.mk>
