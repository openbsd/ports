COMMENT =	import changesets from CVS into Git

MODPY_EGG_VERSION = 0.1.0
REVISION =	3

DISTNAME =	git-cvs-${MODPY_EGG_VERSION}
DISTFILES =	${DISTNAME}{${MODPY_EGG_VERSION}}.tar.gz
CATEGORIES =	devel

HOMEPAGE =	https://github.com/ustuehler/git-cvs

# BSD
PERMIT_PACKAGE = Yes

SITES =		https://github.com/ustuehler/git-cvs/archive/

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS = Yes

MODPY_ADJ_FILES = scripts/git-cvs

RUN_DEPENDS=	devel/git \
		devel/py-rcsparse${MODPY_FLAVOR}
NO_TEST=	Yes

# for regression tests:
# cvs(1) insists on doing a chdir(2) to HOME before checkout
#TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR}
#PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
