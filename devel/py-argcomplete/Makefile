COMMENT=	bash tab completion for argparse

MODPY_EGG_VERSION=	2.0.5
DISTNAME=	argcomplete-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

#MODPY_PYTEST_ARGS=	test/test.py
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/flake8 \
		devel/py-coverage${MODPY_FLAVOR} \
		devel/py-pexpect${MODPY_FLAVOR} \
		devel/py-pip${MODPY_FLAVOR} \
		devel/py-wheel${MODPY_FLAVOR} \
		shells/bash \
		shells/fish \
		shells/tcsh

pre-test:
	@ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	@[[ -r /dev/ptyz0 ]] || (printf "\\nWARNING: tests are likely to fail\
		unless additional ptys are available.\\n\\n" >&2; sleep 2)

.include <bsd.port.mk>
