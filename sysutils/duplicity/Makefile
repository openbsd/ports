COMMENT =		encrypted backup using rsync algorithm

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		duplicity-${MODPY_EGG_VERSION}

DIST_TUPLE =		gitlab duplicity duplicity rel.${MODPY_EGG_VERSION} .
WRKDIST =		${WRKDIR}/duplicity-rel.${MODPY_EGG_VERSION}-37655e4e87da89fffeb4fa424a97867264f95326

CATEGORIES =		sysutils

HOMEPAGE =		https://www.nongnu.org/duplicity/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += rsync

MODULES =		lang/python

MODPY_PYBUILD =		setuptools_scm

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/py-pip${MODPY_FLAVOR} \
			sysutils/py-pipx${MODPY_FLAVOR}

LIB_DEPENDS =		net/librsync

RUN_DEPENDS =		devel/py-fasteners${MODPY_FLAVOR} \
			net/ncftp \
			security/gnupg \
			security/py-paramiko${MODPY_FLAVOR}

TEST_DEPENDS =		archivers/gtar \
			archivers/par2cmdline \
			devel/py-codestyle${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR} \
			devel/pylint${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-runner${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}

MAKE_ENV =		LIBRSYNC_DIR=${LOCALBASE}

#MODPY_ADJ_FILES =	bin/duplicity

.include <bsd.port.mk>
