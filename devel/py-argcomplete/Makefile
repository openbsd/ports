# $OpenBSD: Makefile,v 1.12 2019/07/12 20:45:17 sthen Exp $

COMMENT =	bash tab completion for argparse

MODPY_EGG_VERSION =	1.9.3
DISTNAME =	argcomplete-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	0

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-coverage${MODPY_FLAVOR} \
		devel/py-pexpect${MODPY_FLAVOR} \
		devel/py-wheel${MODPY_FLAVOR} \
		shells/bash \
		shells/tcsh

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

pre-test:
	@ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	@[[ -r /dev/ptyz0 ]] || (printf "\\nWARNING: tests are likely to fail\
		unless additional ptys are available.\\n\\n" >&2; sleep 2)

.include <bsd.port.mk>
