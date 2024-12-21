COMMENT=		Python SANE module

MODPY_DISTV=	2.9.1
DISTNAME=		Sane-${MODPY_DISTV}
DISTFILES=		${DISTNAME}{v${MODPY_DISTV}}.tar.gz
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=		graphics
REVISION=		4

HOMEPAGE=		http://python-pillow.github.io/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE=	Yes

WANTLIB += pthread sane

SITES=          	https://github.com/python-pillow/Sane/archive/

MODULES=		lang/python

SUBST_VARS=		MODPY_SITEPKG

MODPY_PYBUILD =		setuptools

RUN_DEPENDS=		graphics/py-Pillow \
			math/py-numpy

LIB_DEPENDS=		graphics/sane-backends

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
