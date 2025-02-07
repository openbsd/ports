COMMENT=	modern multi-format test-case reducer

GH_ACCOUNT=	DRMacIver
GH_PROJECT=	shrinkray
GH_COMMIT=	185b0f627435f39c048c1a891911429f6d7176af
DISTNAME=	shrinkray-0.0.20250103
MODPY_DISTV=	0.0.0

MAINTAINER=	Edd Barrett <edd@openbsd.org>
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

# only very old versions there; no tags in gh repo
#MODPY_PI=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	devel/py-binaryornot \
		devel/py-click \
		devel/py-exceptiongroup \
		devel/py-libcst \
		devel/py-trio \
		devel/py-urwid \
		textproc/py-chardet \
		textproc/py-humanize
TEST_DEPENDS=	devel/py-hypothesis \
		devel/py-hypothesmith \
		devel/py-mypy-extensions \
		devel/py-test-asyncio \
		math/minisat \
		textproc/py-black

# Some tests fail with "Hypothesis doesn't know how to run async
# test functions" unless py-test-trio is available (not yet imported).

# Tests expect the python interpreter to be `python`.
#
# PR raised upstream, so hopefully this can go next time we update the port:
# https://github.com/DRMacIver/shrinkray/pull/17
pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
