# $OpenBSD: Makefile,v 1.15 2015/04/02 14:21:16 jasper Exp $

COMMENT =	python interface to amazon web services

MODPY_EGG_VERSION = 2.28.0
DISTNAME =	boto-${MODPY_EGG_VERSION}
PKGNAME = 	py-${DISTNAME}
CATEGORIES =	net

HOMEPAGE =	https://github.com/boto/boto
MODPY_PI =	Yes

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/py-paramiko \
			textproc/py-yaml \
			www/py-requests

BUILD_DEPENDS =		${RUN_DEPENDS} \
			textproc/py-sphinx \

# XXX The tests are not suited for automatic testing because online
#     user accounts at Amazon are necessary for this.
NO_TEST =		Yes

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

.include <bsd.port.mk>
