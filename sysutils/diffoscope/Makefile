# $OpenBSD: Makefile,v 1.14 2019/07/30 15:05:45 bcallah Exp $

MODPY_EGG_VERSION =	120
COMMENT =	in-depth comparison of files, archives, and directories
DISTNAME =	diffoscope-${MODPY_EGG_VERSION}
CATEGORIES =	sysutils devel

HOMEPAGE =	https://diffoscope.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	archivers/py-libarchive-c${MODPY_FLAVOR} \
		devel/py-magic${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-pluggy${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
