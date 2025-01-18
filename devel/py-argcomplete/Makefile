COMMENT=	bash tab completion for argparse

MODPY_DISTV=	3.5.3
DISTNAME=	argcomplete-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/kislyuk/argcomplete

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/py-coverage \
		devel/py-pexpect \
		devel/py-wheel \
		devel/py-mypy \
		shells/bash \
		shells/zsh

do-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	cd ${WRKSRC}; ${SETENV} ${ALL_TEST_ENV} make test

.include <bsd.port.mk>
