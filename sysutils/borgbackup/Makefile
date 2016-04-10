# $OpenBSD: Makefile,v 1.3 2016/04/10 18:58:16 sthen Exp $

COMMENT =		deduplicating backup program

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		borgbackup-${MODPY_EGG_VERSION}

MODPY_PI =		Yes

CATEGORIES =		sysutils

MAINTAINER =		Michael Reed <m.reed@mykolab.com>

# BSD-3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
WANTLIB +=		${MODPY_WANTLIB} crypto pthread lz4

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} archivers/lz4
BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR} \
			textproc/py-sphinx
RUN_DEPENDS +=		net/py-msgpack${MODPY_FLAVOR}

TEST_DEPENDS +=		net/py-msgpack${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-virtualenv${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes

post-build:
	make -C ${WRKSRC}/docs man READTHEDOCS=True

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/_build/man/borg.1 ${PREFIX}/man/man1/borg.1

do-test:
	(cd ${WRKSRC} ;\
		virtualenv${MODPY_BIN_SUFFIX} --system-site-packages --no-pip borg-env ;\
		. borg-env/bin/activate ;\
		./borg-env/bin/python${MODPY_DEFAULT_VERSION_3} ./setup.py install ;\
		cd build/lib.openbsd-$$(uname -r)-$$(uname -m)-${MODPY_DEFAULT_VERSION_3} ;\
		export PYTHONPATH=`pwd` ;\
		py.test${MODPY_BIN_SUFFIX} -k 'not benchmark' --pyargs borg.testsuite)

.include <bsd.port.mk>
