# $OpenBSD: Makefile,v 1.3 2017/07/18 09:43:40 rpointel Exp $

COMMENT =	Python bindings for The Sleuth Kit (libtsk)

MODPY_EGG_VERSION = 20170508
DISTNAME =	pytsk3-${MODPY_EGG_VERSION}
PKGNAME =	py-tsk-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/py4n6/pytsk/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

WANTLIB += pthread talloc tsk ${MODPY_WANTLIB}

pre-configure:
		${SUBST_DATA} ${WRKSRC}/setup.py ${WRKSRC}/setup.py.new
		mv ${WRKSRC}/setup.py.new ${WRKSRC}/setup.py

LIB_DEPENDS =	sysutils/sleuthkit \
		devel/libtalloc
TEST_DEPENDS =	sysutils/py-tsk=${MODPY_EGG_VERSION}

# it needs test_data/* in the Github repository
do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
