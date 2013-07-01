# $OpenBSD: Makefile,v 1.11 2013/07/01 10:39:18 sthen Exp $

COMMENT=		Python Abstract Syntax Tree New Generation

DISTNAME=		logilab-astng-0.22.0
PKGNAME=		py-${DISTNAME}
REVISION=		1
CATEGORIES=		devel

HOMEPAGE=		http://www.logilab.org/projects/astng/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.logilab.fr/pub/astng/

MODULES=		lang/python
RUN_DEPENDS=		devel/py-logilab-common
TEST_DEPENDS=	${RUN_DEPENDS}

do-test: install
	@cd ${WRKSRC}/test && ${MODPY_BIN} /usr/local/bin/pytest

.include <bsd.port.mk>
