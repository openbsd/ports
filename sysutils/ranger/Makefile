COMMENT =	minimalistic console file manager

MODPY_DISTV =	1.9.4
DISTNAME =	ranger-${MODPY_DISTV}
REVISION =	0

CATEGORIES =	sysutils misc

HOMEPAGE =	https://ranger.github.io/

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =		https://ranger.github.io/

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_ADJ_FILES =	tests/manpage_completion_test.py

# libarchive (bsdtar) used as an alternative to atool
RUN_DEPENDS =	archivers/libarchive \
		devel/desktop-file-utils \
		shells/bash \
		textproc/py-chardet
TEST_DEPENDS =	devel/flake8 \
		devel/pylint \
		devel/shellcheck

TEST_ENV =	HOME=${WRKDIR} \
		PYTHON=${MODPY_BIN} \
		TERM=${TERM}

# tests
USE_GMAKE =	Yes

.include <bsd.port.mk>
