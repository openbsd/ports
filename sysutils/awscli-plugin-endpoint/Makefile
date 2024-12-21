COMMENT=		service endpoint configuration per service on profile

MODPY_DISTV=	0.4
DISTNAME=		awscli-plugin-endpoint-${MODPY_DISTV}
REVISION=		1

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		sysutils/awscli

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/awscli-plugin-endpoint
	${INSTALL_DATA} ${WRKSRC}/README.md \
		${PREFIX}/share/doc/awscli-plugin-endpoint

.include <bsd.port.mk>
