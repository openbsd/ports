# $OpenBSD: Makefile,v 1.12 2019/05/15 12:04:37 kmos Exp $

COMMENT =		test utilities working with files and commands

MODPY_EGG_VERSION =	0.3.1
DISTNAME =		testpath-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jupyter/testpath

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS =		devel/py-pathlib${MODPY_FLAVOR}
.endif

post-build:
	cd ${WRKSRC}/doc && PYTHONPATH=${WRKSRC} \
		${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX} -N . _build/html

DOCDIR = ${PREFIX}/share/doc/${MODPY_PY_PREFIX}testpath
post-install:
	cp -r ${WRKBUILD}/doc/_build/html ${DOCDIR}
	rm ${DOCDIR}/.buildinfo
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCDIR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
