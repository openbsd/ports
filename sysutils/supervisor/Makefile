COMMENT=	system to monitor and control processes

MODPY_DISTV =	4.2.5
DISTNAME=	supervisor-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	http://supervisord.org/

# BSD-derived
PERMIT_PACKAGE =Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/supervisor/skel/sample.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/supervisor/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/supervisor/

.include <bsd.port.mk>
