# $OpenBSD: Makefile,v 1.15 2020/06/17 07:49:59 landry Exp $

COMMENT =		asynchronous networking Python framework

MODPY_EGG_VERSION =	20.3.0

EXTRACT_SUFX =		.tar.bz2
DISTNAME =		Twisted-${MODPY_EGG_VERSION}
PKGNAME =		py-twisted-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://twistedmatrix.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB}
WANTLIB +=		pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-incremental${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-hamcrest${MODPY_FLAVOR}	\
			devel/py-asn1${MODPY_FLAVOR}		\
			devel/py-automat${MODPY_FLAVOR}		\
			devel/py-constantly${MODPY_FLAVOR}	\
			devel/py-incremental${MODPY_FLAVOR}	\
			devel/py-zopeinterface${MODPY_FLAVOR}	\
			net/py-idna${MODPY_FLAVOR}		\
			security/py-cryptography${MODPY_FLAVOR}	\
			security/py-openssl${MODPY_FLAVOR}	\
			security/py-service_identity${MODPY_FLAVOR} \
			www/py-hyperlink${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-SOAPpy
.endif

SUBST_FILES =		${WRKSRC}/src/Twisted.egg-info/entry_points.txt \
			${WRKSRC}/src/twisted/python/_setup.py \
			${WRKSRC}/src/twisted/conch/test/test_ckeygen.py

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_ENV =		LC_ALL=en_US.UTF-8
TESTDIR =		${WRKSRC}/regress

pre-configure:
	${SUBST_CMD} ${SUBST_FILES}
.for f in ${SUBST_FILES}
	rm ${WRKSRC}/$f.{orig,beforesubst}
.endfor

do-test:
	mkdir -p ${TESTDIR}
	cd ${TESTDIR} && ${LOCALBASE}/bin/trial${MODPY_BIN_SUFFIX} twisted

.include <bsd.port.mk>
