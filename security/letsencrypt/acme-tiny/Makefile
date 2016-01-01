# $OpenBSD: Makefile,v 1.3 2016/01/01 19:10:34 sthen Exp $

COMMENT=	small 3rd-party letsencrypt client

DISTNAME=	acme-tiny-20151215
REVISION=	1

HOMEPAGE=	https://github.com/diafygi/acme-tiny

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=	diafygi
GH_PROJECT=	acme-tiny
GH_COMMIT=	86394c615afa9470b82c3385500941b62f69ab44

MODPY_PI=	No
MODPY_SETUPTOOLS= No

NO_BUILD=	Yes
# there are tests, but need a relatively complex infrastructure
NO_TEST=	Yes

MODPY_ADJ_FILES=	acme_tiny.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/acme_tiny.py ${PREFIX}/bin/acme-tiny
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/acme-tiny
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/acme-tiny/

.include <bsd.port.mk>
