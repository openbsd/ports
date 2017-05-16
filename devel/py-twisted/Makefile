# $OpenBSD: Makefile,v 1.6 2017/05/16 19:27:29 landry Exp $

COMMENT =		asynchronous networking Python framework

MODPY_EGG_VERSION =	17.1.0

EXTRACT_SUFX =		.tar.bz2
DISTNAME =		Twisted-${MODPY_EGG_VERSION}
PKGNAME =		py-twisted-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://twistedmatrix.com/

MAINTAINER =		Pavel Korovin <p@tristero.se>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		${MODPY_WANTLIB}
WANTLIB +=		pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-constantly		\
			devel/py-incremental

RUN_DEPENDS =		devel/py-SOAPpy			\
			devel/py-asn1			\
			devel/py-automat		\
			devel/py-constantly		\
			devel/py-incremental		\
			devel/py-zopeinterface		\
			net/py-idna			\
			security/py-cryptography	\
			security/py-openssl		\
			security/py-service_identity

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_ENV =		LC_ALL=en_US.UTF-8
TESTDIR =		${WRKSRC}/regress

do-test:
	mkdir -p ${TESTDIR}
	cd ${TESTDIR} && ${LOCALBASE}/bin/trial twisted

.include <bsd.port.mk>
