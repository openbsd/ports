COMMENT=	control-spec implementation for Tor

MODPY_DISTV=	24.8.0
DISTNAME=	txtorcon-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

HOMEPAGE=	https://txtorcon.readthedocs.org

CATEGORIES=	net

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-automat \
		devel/py-twisted

post-install:
	mv ${PREFIX}/share/txtorcon/examples ${PREFIX}/share/examples/txtorcon
	mv ${PREFIX}/share/txtorcon ${PREFIX}/share/doc/txtorcon

.include <bsd.port.mk>
