COMMENT=		DBus library in Python 3

V=			1.7
DISTNAME=		dasbus-${V}
PKGNAME=		py-dasbus-${V}

CATEGORIES=		x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/dasbus-project/dasbus/releases/download/v${V}/

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/py-gobject3 \
			x11/dbus

.include <bsd.port.mk>
