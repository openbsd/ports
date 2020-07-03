# $OpenBSD: Makefile,v 1.35 2020/07/03 21:13:09 sthen Exp $

MODPY_EGG_VERSION =	149
COMMENT =	in-depth comparison of files, archives, and directories
DISTNAME =	diffoscope-${MODPY_EGG_VERSION}
CATEGORIES =	sysutils devel
REVISION =	0

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
