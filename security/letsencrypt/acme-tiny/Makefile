# $OpenBSD: Makefile,v 1.11 2020/07/03 21:13:05 sthen Exp $

COMMENT=	small 3rd-party letsencrypt client

GH_ACCOUNT=	diafygi
GH_PROJECT=	acme-tiny
GH_TAGNAME=	4.0.4
EPOCH=		0
REVISION=	3

HOMEPAGE=	https://github.com/diafygi/acme-tiny

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI=	No
MODPY_SETUPTOOLS= No

NO_BUILD=	Yes
# there are tests, but need a relatively complex infrastructure
NO_TEST=	Yes

MODPY_ADJ_FILES=	acme_tiny.py
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/acme_tiny.py ${PREFIX}/bin/acme-tiny
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/acme-tiny
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/acme-tiny/

.include <bsd.port.mk>
