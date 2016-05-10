# $OpenBSD: Makefile,v 1.4 2016/05/10 09:36:22 sthen Exp $

COMMENT=	small 3rd-party letsencrypt client

DISTNAME=	acme-tiny-20160326

HOMEPAGE=	https://github.com/diafygi/acme-tiny

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=	diafygi
GH_PROJECT=	acme-tiny
GH_COMMIT=	7a5a2558c8d6e5ab2a59b9fec9633d9e63127971

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
