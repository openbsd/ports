COMMENT =		encrypted backup using rsync algorithm

MODPY_EGG_VERSION =	2.1.4
DISTNAME =		duplicity-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://www.nongnu.org/duplicity/

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =			https://gitlab.com/duplicity/duplicity/uploads/490b3b4bfe0c4c5b9513b121fef78946/

WANTLIB += rsync

MODULES =		lang/python

MODPY_PYBUILD =		setuptools_scm

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		net/librsync

RUN_DEPENDS =		devel/py-fasteners${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			net/ncftp \
			security/gnupg>=2.2.23p1 \
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

MODPY_ADJ_FILES =	bin/duplicity

.include <bsd.port.mk>
