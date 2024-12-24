COMMENT =		encrypted backup using rsync algorithm

MODPY_DISTV =		3.0.3
DISTNAME =		duplicity-${MODPY_DISTV}

DIST_TUPLE =		gitlab duplicity duplicity rel.${MODPY_DISTV} .
WRKDIST =		${WRKDIR}/duplicity-rel.${MODPY_DISTV}-025b9226b29be8dbb984a06d8a8a53b6b23087c7

CATEGORIES =		sysutils

HOMEPAGE =		https://www.nongnu.org/duplicity/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += rsync

MODULES =		lang/python

MODPY_PYBUILD =		setuptools_scm

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/py-pip \
			sysutils/py-pipx

LIB_DEPENDS =		net/librsync

RUN_DEPENDS =		devel/py-fasteners \
			net/ncftp \
			security/gnupg \
			security/py-paramiko

TEST_DEPENDS =		archivers/gtar \
			archivers/par2cmdline \
			devel/py-codestyle \
			devel/py-coverage \
			devel/py-mock \
			devel/py-pexpect \
			devel/pylint \
			devel/py-test \
			devel/py-test-cov \
			devel/py-test-runner \
			sysutils/py-psutil \
			textproc/py-sphinx

MAKE_ENV =		LIBRSYNC_DIR=${LOCALBASE}

#MODPY_ADJ_FILES =	bin/duplicity

.include <bsd.port.mk>
