# $OpenBSD: Makefile,v 1.8 2019/04/28 20:51:53 sthen Exp $

MODPY_EGG_VERSION =	113
COMMENT =	in-depth comparison of files, archives, and directories
DISTNAME =	diffoscope-${MODPY_EGG_VERSION}
CATEGORIES =	sysutils devel
REVISION =	0

HOMEPAGE =	https://diffoscope.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	archivers/py-libarchive-c${MODPY_FLAVOR} \
		devel/py-magic${MODPY_FLAVOR}

TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-pluggy${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
