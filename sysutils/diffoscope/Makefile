# $OpenBSD: Makefile,v 1.44 2020/08/30 02:31:28 bcallah Exp $

MODPY_EGG_VERSION =	158
COMMENT =	in-depth comparison of files, archives, and directories
DISTNAME =	diffoscope-${MODPY_EGG_VERSION}
CATEGORIES =	sysutils devel

HOMEPAGE =	https://diffoscope.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

PORTHOME =		${WRKDIST}

RUN_DEPENDS =	archivers/py-libarchive-c${MODPY_FLAVOR} \
		devel/py-magic${MODPY_FLAVOR}

# Could use a port of tlsh to make more tests work
TEST_DEPENDS =	devel/py-argcomplete${MODPY_FLAVOR} \
		devel/py-progressbar${MODPY_FLAVOR} \
		sysutils/binwalk \
		sysutils/py-distro \
		textproc/py-defusedxml${MODPY_FLAVOR}

.include <bsd.port.mk>
