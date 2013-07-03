# $OpenBSD: Makefile,v 1.2 2013/07/03 20:07:26 landry Exp $

COMMENT =	Python driver for mongodb

MODPY_EGG_VERSION = 2.5
DISTNAME =	pymongo-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	0

CATEGORIES =	databases devel

HOMEPAGE =	http://github.com/mongodb/mongo-python-driver/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	pthread ${MODPY_WANTLIB}

MASTER_SITES =	${MASTER_SITE_PYPI:=p/pymongo/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =	textproc/py-sphinx
TEST_DEPENDS =	devel/py-nose

# needs a running mongodb instance in 127.0.0.1:27017
TEST_IS_INTERACTIVE = Yes

post-build:
	@cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ${MODPY_SETUP} doc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}mongo
	cd ${WRKSRC}/doc/_build/${MODPY_EGG_VERSION} && \
	    pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}mongo
	rm -rf ${PREFIX}/share/doc/${MODPY_PY_PREFIX}mongo/_sources

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mle}
PKG_ARGS +=	-Dno_be=1
.else
PKG_ARGS +=	-Dno_be=0
.endif

.include <bsd.port.mk>
