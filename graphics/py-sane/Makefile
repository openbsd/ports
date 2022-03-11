COMMENT=		Python SANE module

MODPY_EGG_VERSION=	2.9.1
DISTNAME=		Sane-${MODPY_EGG_VERSION}
DISTFILES=		${DISTNAME}{v${MODPY_EGG_VERSION}}.tar.gz
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=		graphics
REVISION=		0

HOMEPAGE=		http://python-pillow.github.io/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE=	Yes

WANTLIB += pthread sane

MASTER_SITES=          https://github.com/python-pillow/Sane/archive/

FLAVORS=		python3
FLAVOR =		python3

MODULES=		lang/python

SUBST_VARS=		MODPY_SITEPKG

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		graphics/py-Pillow${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

LIB_DEPENDS=		graphics/sane-backends

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
