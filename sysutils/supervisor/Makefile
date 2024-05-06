COMMENT=	system to monitor and control processes

MODPY_EGG_VERSION =	4.2.4
DISTNAME=	supervisor-${MODPY_EGG_VERSION}
REVISION=	1

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
