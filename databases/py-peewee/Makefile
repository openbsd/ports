# $OpenBSD: Makefile,v 1.24 2021/11/02 00:00:16 sthen Exp $

COMMENT=		small expressive ORM

MODPY_EGG_VERSION=	2.8.3
DISTNAME=		peewee-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		9

GH_ACCOUNT=		coleifer
GH_PROJECT=		peewee
GH_TAGNAME=		${MODPY_EGG_VERSION}

CATEGORIES=		databases

HOMEPAGE=		http://docs.peewee-orm.com/

# MIT
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=		textproc/py-sphinx,python3>=4.0.2

FLAVORS=		python3
FLAVOR=			python3

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

MAKE_ENV +=	PYTHONPATH=${WRKSRC}
DOCSRC =	${WRKSRC}/docs
post-build:
	cd ${DOCSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}peewee
EXAMPLES =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}peewee
post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}
	${INSTALL_DATA_DIR} ${EXAMPLES}
	cd ${WRKSRC}/examples && pax -rw * ${EXAMPLES}
	mv ${PREFIX}/bin/pwiz.py ${PREFIX}/bin/pwiz

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} tests.py

.include <bsd.port.mk>
