COMMENT=	bash tab completion for argparse

MODPY_DISTV=	2.0.5
DISTNAME=	argcomplete-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	1

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

#MODPY_PYTEST_ARGS=	test/test.py
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/flake8 \
		devel/py-coverage \
		devel/py-pexpect \
		devel/py-pip \
		devel/py-wheel \
		shells/bash \
		shells/fish \
		shells/tcsh

pre-test:
	@ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	@[[ -r /dev/ptyz0 ]] || (printf "\\nWARNING: tests are likely to fail\
		unless additional ptys are available.\\n\\n" >&2; sleep 2)

.include <bsd.port.mk>
