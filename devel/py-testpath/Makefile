# $OpenBSD: Makefile,v 1.5 2016/04/16 19:06:26 shadchin Exp $

COMMENT =		test utilities working with files and commands

MODPY_EGG_VERSION =	0.3
DISTNAME =		${MODPY_EGG_VERSION}
PKGNAME =		py-testpath-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jupyter/testpath

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

GH_ACCOUNT =		jupyter
GH_PROJECT =		testpath
GH_TAGNAME =		${MODPY_EGG_VERSION}

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}
TEST_DEPENDS +=		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}
RUN_DEPENDS +=		devel/py-pathlib${MODPY_FLAVOR}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

WRKSRC = ${WRKDIR}/testpath-${MODPY_EGG_VERSION}

FLAVORS =		python3
FLAVOR ?=

MAKE_ENV +=	PYTHONPATH=${WRKSRC} SPHINXBUILD=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}

# Does not use any setup.py based build system
do-build:
	${MODPY_BIN} -m compileall ${WRKBUILD}/testpath/
	cd ${WRKSRC}/doc && PYTHONPATH=${WRKSRC} \
		${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX} -N . _build/html

PREFIX_SITE = ${PREFIX}/lib/python${MODPY_VERSION}/site-packages
DOCDIR = ${PREFIX}/share/doc/${MODPY_PY_PREFIX}testpath
do-install:
	${INSTALL_DATA_DIR} ${PREFIX_SITE}
	cp -r ${WRKBUILD}/testpath ${PREFIX_SITE}
	cp -r ${WRKBUILD}/doc/_build/html ${DOCDIR}
	rm ${DOCDIR}/.buildinfo
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCDIR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
