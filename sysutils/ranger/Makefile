# $OpenBSD: Makefile,v 1.13 2020/07/08 22:57:41 kn Exp $

COMMENT =	minimalistic console file manager

MODPY_EGG_VERSION =	1.9.3
DISTNAME =	ranger-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	sysutils misc

HOMEPAGE =	https://ranger.github.io/

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://ranger.github.io/

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES =	tests/manpage_completion_test.py

# libarchive (bsdtar) used as an alternative to atool
RUN_DEPENDS =	archivers/libarchive \
		devel/desktop-file-utils \
		shells/bash \
		textproc/py-chardet${MODPY_FLAVOR}
# XXX: tests fail with "RuntimeError: generator raised StopIteration", probably
# needs devel/py-astroid>=1.5.0 but we have 1.4.9p2
TEST_DEPENDS =	devel/flake8 \
		devel/pylint${MODPY_FLAVOR}<2.0.0 \
		devel/py-test${MODPY_FLAVOR} \
		devel/shellcheck

TEST_ENV =	HOME=${WRKDIR} \
		PYTHON=${MODPY_BIN} \
		TERM=${TERM}

# tests
USE_GMAKE =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{doc/ranger.1,ranger/ext/img_display.py}

pre-test:
.for _p in py.test pylint
	ln -sf ${LOCALBASE}/bin/${_p}${MODPY_BIN_SUFFIX} \
	    ${WRKDIR}/bin/${_p}
.endfor

.include <bsd.port.mk>
