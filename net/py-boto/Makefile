# $OpenBSD: Makefile,v 1.13 2013/03/28 23:58:48 rpe Exp $

COMMENT =	python interface to amazon web services

MODPY_EGG_VERSION = 2.8.0
DISTNAME =	boto-${MODPY_EGG_VERSION}
PKGNAME = 	py-${DISTNAME}
CATEGORIES =	net

HOMEPAGE =	https://github.com/boto/boto
MASTER_SITES =	${MASTER_SITE_PYPI:=b/boto/}

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-sphinx \
			security/py-M2Crypto \
			www/py-requests

BUILD_DEPENDS =		${RUN_DEPENDS}

TEST_DEPENDS =		devel/py-nose \
			devel/py-mock

DOCDIR =		${PREFIX}/share/doc/py-boto

post-build:
	cd ${WRKSRC} && \
		PYTHONPATH=${WRKSRC}\
		 ${LOCALBASE}/bin/sphinx-build -N -b text docs/source \
		build/doc

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/ref
	${INSTALL_DATA} ${WRKSRC}/README.rst ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/build/doc/*.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/build/doc/ref/*.txt ${DOCDIR}/ref

# XXX: This tests only ec2 and s2, which is only a small part of
#      the whole testsuite. An aws user account with the respective
#      features enabled is needed.
do-test:
	@cd ${WRKSRC}/tests && python test.py -v -t ec2 -t s3
	

.include <bsd.port.mk>
