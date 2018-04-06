# $OpenBSD: Makefile,v 1.7 2018/04/06 19:14:00 pvk Exp $

COMMENT =		asynchronous networking Python framework

MODPY_EGG_VERSION =	17.9.0

EXTRACT_SUFX =		.tar.bz2
DISTNAME =		Twisted-${MODPY_EGG_VERSION}
PKGNAME =		py-twisted-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://twistedmatrix.com/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		${MODPY_WANTLIB}
WANTLIB +=		pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-incremental${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR}		\
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

.if empty(FLAVOR)
RUN_DEPENDS +=		devel/py-SOAPpy
.endif

SUBST_FILES =		${WRKSRC}/src/Twisted.egg-info/entry_points.txt \
			${WRKSRC}/src/twisted/python/_setup.py

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
