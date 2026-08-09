COMMENT=	RELAX NG Compact to RELAX NG conversion library

CATEGORIES=	textproc

GH_ACCOUNT=	djc
GH_PROJECT=	rnc2rng
GH_TAGNAME=	2.7.0
MODPY_DISTV=	${GH_TAGNAME}
PKGNAME=	py-${DISTNAME}

# MIT
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://github.com/djc/rnc2rng

RUN_DEPENDS=	devel/py-rply

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
