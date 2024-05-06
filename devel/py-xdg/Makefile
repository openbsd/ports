COMMENT=		python library to access freedesktop.org standards

MODPY_EGG_VERSION=	0.28
DISTNAME=		pyxdg-${MODPY_EGG_VERSION}
PKGNAME=		py-xdg-${MODPY_EGG_VERSION}
REVISION=		3

CATEGORIES=		devel

HOMEPAGE=		http://freedesktop.org/wiki/Software/pyxdg

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

FLAVORS=		python3
FLAVOR=			python3

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xdg/{BaseDirectory.py,Menu.py}

.include <bsd.port.mk>
