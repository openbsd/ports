COMMENT=		translate ASCII punctuation characters into smart entities

MODPY_EGG_VERSION=	2.0.1
GH_ACCOUNT=		leohemsted
GH_PROJECT=		smartypants.py
GH_TAGNAME=		v${MODPY_EGG_VERSION}
PKGNAME=		py-smartypants-${MODPY_EGG_VERSION}
REVISION=		2

CATEGORIES=		textproc

# BSD 3-clause
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

FLAVORS=		python3
FLAVOR=			python3

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
