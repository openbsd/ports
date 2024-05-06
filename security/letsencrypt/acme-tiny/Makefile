COMMENT=	small 3rd-party letsencrypt client

MODPY_EGG_VERSION= 5.0.1
DISTNAME=	acme-tiny-${MODPY_EGG_VERSION}
EPOCH=		0

REVISION=	2

HOMEPAGE=	https://github.com/diafygi/acme-tiny

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes
MODPY_PI_DIR=	a/acme_tiny
MODPY_PYBUILD=	setuptools_scm

# there are tests, but they need to run Pebble as a local CA (separate go-lang
# software)
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/acme-tiny
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/acme-tiny/

.include <bsd.port.mk>
