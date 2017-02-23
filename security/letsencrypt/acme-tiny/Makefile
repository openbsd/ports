# $OpenBSD: Makefile,v 1.5 2017/02/23 22:57:11 sthen Exp $

COMMENT=	small 3rd-party letsencrypt client

DISTNAME=	acme-tiny-20160818

HOMEPAGE=	https://github.com/diafygi/acme-tiny

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=	diafygi
GH_PROJECT=	acme-tiny
GH_COMMIT=	daba51d37efd7c1f205f9da383b9b09968e30d29

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
