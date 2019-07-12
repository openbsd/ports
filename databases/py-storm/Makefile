# $OpenBSD: Makefile,v 1.22 2019/07/12 20:44:00 sthen Exp $

COMMENT=		generic object relational mapper for Python

MODPY_EGG_VERSION=	0.19
DISTNAME=		storm-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

CATEGORIES=		databases

HOMEPAGE=		https://storm.canonical.com/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MASTER_SITES=		http://launchpad.net/storm/trunk/${MODPY_EGG_VERSION}/+download/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	databases/py-sqlite2

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} ./test --verbose

.include <bsd.port.mk>
