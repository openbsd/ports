# $OpenBSD: Makefile,v 1.52 2020/07/05 08:53:45 ajacoutot Exp $

COMMENT =		encrypted backup using rsync algorithm

MODPY_EGG_VERSION =	0.8.13
DISTNAME =		duplicity-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		http://www.nongnu.org/duplicity/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += pthread rsync

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=duplicity/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/py-setuptools_scm${MODPY_FLAVOR}

LIB_DEPENDS =		net/librsync

RUN_DEPENDS =		devel/py-fasteners${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			net/ncftp \
			gnupg->=2:security/gnupg2 \
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

.include <bsd.port.mk>
