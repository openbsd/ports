# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:26 espie Exp $

COMMENT=	common low-level libraries for logilab projects

DISTNAME=	logilab-common-0.56.0
PKGNAME=	py-${DISTNAME}
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	http://www.logilab.org/projects/common/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

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
