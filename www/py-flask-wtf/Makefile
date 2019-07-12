# $OpenBSD: Makefile,v 1.13 2019/07/12 20:51:01 sthen Exp $

COMMENT=	simple integration of Flask and WTForms

MODPY_EGG_VERSION=0.14.2
DISTNAME=	Flask-WTF-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www
REVISION=	0

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS=		textproc/py-sphinx${MODPY_FLAVOR}
RUN_DEPENDS=		www/py-flask${MODPY_FLAVOR} \
			www/py-wtforms${MODPY_FLAVOR}

# Could also use various unported eggs, Flask-Babel, speaklater
TEST_DEPENDS=		devel/py-nose

USE_GMAKE=		Yes

MAIN_VERSION =		${MODPY_EGG_VERSION:C/.[0-9]$//}
SUBST_VARS +=		MAIN_VERSION
pre-build:
	${SUBST_CMD} ${WRKSRC}/docs/conf.py

post-build:
	@cd ${WRKSRC}/docs && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} SPHINXBUILD=sphinx-build${MODPY_BIN_SUFFIX} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}flask-wtf/
	cd ${WRKSRC}/docs/_build/html && \
		pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}flask-wtf/

.include <bsd.port.mk>
