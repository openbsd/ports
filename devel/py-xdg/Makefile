COMMENT=		python library to access freedesktop.org standards

MODPY_DISTV=	0.28
DISTNAME=		pyxdg-${MODPY_DISTV}
PKGNAME=		py-xdg-${MODPY_DISTV}
REVISION=		4

CATEGORIES=		devel

HOMEPAGE=		http://freedesktop.org/wiki/Software/pyxdg

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/xdg/{BaseDirectory.py,Menu.py}

.include <bsd.port.mk>
