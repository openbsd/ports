COMMENT=	parse project changelog documents

MODPY_DISTV=	0.0.3
DISTNAME=	changelog_chug-${MODPY_DISTV}
PKGNAME=	py-changelog-chug-${MODPY_DISTV}
CATEGORIES=	textproc

HOMEPAGE=	https://git.sr.ht/~bignose/changelog-chug

# AGPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	textproc/py-docutils \
		textproc/py-semver
BUILD_DEPENDS=	${RUN_DEPENDS}
# needs py-testscenarios
NO_TEST=	Yes

.include <bsd.port.mk>
