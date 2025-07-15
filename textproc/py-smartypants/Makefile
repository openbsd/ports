COMMENT=	translate ASCII punctuation characters into smart entities

MODPY_DISTV=	2.0.2
GH_ACCOUNT=	leohemsted
GH_PROJECT=	smartypants.py
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-smartypants-${MODPY_DISTV}

CATEGORIES=	textproc

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	textproc/py-docutils

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
