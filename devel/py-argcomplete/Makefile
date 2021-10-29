# $OpenBSD: Makefile,v 1.16 2021/10/29 15:38:41 sthen Exp $

COMMENT =	bash tab completion for argparse

MODPY_EGG_VERSION =	1.9.3
DISTNAME =	argcomplete-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	4

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =	python3

TEST_DEPENDS =	devel/py-coverage${MODPY_FLAVOR} \
		devel/py-pexpect${MODPY_FLAVOR} \
		devel/py-wheel${MODPY_FLAVOR} \
		shells/bash \
		shells/tcsh

pre-test:
	@ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	@[[ -r /dev/ptyz0 ]] || (printf "\\nWARNING: tests are likely to fail\
		unless additional ptys are available.\\n\\n" >&2; sleep 2)

.include <bsd.port.mk>
