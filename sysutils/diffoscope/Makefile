MODPY_DISTV =	272
COMMENT =	in-depth comparison of files, archives, and directories
DISTNAME =	diffoscope-${MODPY_DISTV}
CATEGORIES =	sysutils devel
REVISION =	0

HOMEPAGE =	https://diffoscope.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

PORTHOME =	${WRKDIST}

RUN_DEPENDS =	archivers/py-libarchive-c \
		devel/py-magic

# Could use a port of tlsh to make more tests work
TEST_DEPENDS =	devel/py-argcomplete \
		devel/py-progressbar \
		sysutils/binwalk \
		sysutils/py-distro \
		textproc/py-defusedxml

.include <bsd.port.mk>
