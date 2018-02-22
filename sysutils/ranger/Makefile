# $OpenBSD: Makefile,v 1.7 2018/02/22 16:51:50 kn Exp $

COMMENT =	minimalistic console file manager

MODPY_EGG_VERSION =	1.9.1
DISTNAME =	ranger-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils misc

HOMEPAGE =	https://ranger.github.io/

MAINTAINER =	Klemens Nanni <kn@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

# libarchive (bsdtar) used as an alternative to atool
RUN_DEPENDS =	archivers/libarchive \
		shells/bash \
		textproc/py-chardet${MODPY_FLAVOR}
TEST_DEPENDS =	devel/flake8 \
		devel/pylint${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

TEST_ENV =	PYTHON=${MODPY_BIN}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{doc/ranger.1,ranger/ext/img_display.py}

pre-test:
.for _p in py.test pylint
	ln -sf ${LOCALBASE}/bin/${_p}${MODPY_BIN_SUFFIX} \
	    ${WRKDIR}/bin/${_p}
.endfor

post-install:
	mv ${PREFIX}/{share/man/man1,man}
	mv ${PREFIX}/share/{doc/ranger/examples,examples/ranger}

.include <bsd.port.mk>
