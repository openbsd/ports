# $OpenBSD: Makefile,v 1.14 2013/07/01 10:39:18 sthen Exp $

COMMENT=	common low-level libraries for logilab projects

DISTNAME=	logilab-common-0.56.0
PKGNAME=	py-${DISTNAME}
REVISION=	2
CATEGORIES=	devel

HOMEPAGE=	http://www.logilab.org/projects/common/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.logilab.fr/pub/common/

MODULES=	lang/python

RUN_DEPENDS=	devel/py-mxDateTime
TEST_DEPENDS=${RUN_DEPENDS}

do-test: fake
	@cd ${WRKSRC}/test && \
	env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ../bin/pytest

.include <bsd.port.mk>
