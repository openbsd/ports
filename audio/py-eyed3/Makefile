COMMENT=	module and program for processing ID3 tags

# standalone software - intentionally no py-* prefix/FLAVOR.
MODPY_DISTV=	0.9.7
DISTNAME=	eyeD3-${MODPY_DISTV}
CATEGORIES=	audio
REVISION=	1

HOMEPAGE=	https://eyed3.readthedocs.io/

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
RUN_DEPENDS=	devel/py-deprecation \
		devel/py-filetype

FAKE_FLAGS=	docdir=${WRKINST}${PREFIX}/share/doc/py-eyed3

MODPY_PYTEST_ARGS= --ignore tests/test_factory.py

# https://github.com/nicfit/eyeD3/issues/588
post-install:
	rm -r ${WRKINST}${MODPY_SITEPKG}/!(eyed3*)

.include <bsd.port.mk>
