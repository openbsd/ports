COMMENT=	testing library which puts values into source code

MODPY_DISTV=	0.31.1
DISTNAME=	inline_snapshot-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	devel

HOMEPAGE=	https://15r10nk.github.io/inline-snapshot/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

RUN_DEPENDS =	devel/py-asttokens \
		devel/py-executing \
		devel/py-rich

TEST_DEPENDS =	devel/py-test-subtests \
		textproc/py-black

.include <bsd.port.mk>
