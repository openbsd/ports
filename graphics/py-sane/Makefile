COMMENT=	Python SANE module

MODPY_DISTV=	2.9.2
REVISION=	0
GH_ACCOUNT=	python-pillow
GH_PROJECT=	Sane
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	graphics

HOMEPAGE=	https://github.com/python-pillow/Sane

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE=	Yes

WANTLIB += sane

MODULES=	lang/python

SUBST_VARS=	MODPY_SITEPKG

MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	graphics/py-Pillow \
		math/py-numpy

LIB_DEPENDS=	graphics/sane-backends

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
