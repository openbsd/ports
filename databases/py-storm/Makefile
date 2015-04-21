# $OpenBSD: Makefile,v 1.18 2015/04/21 18:40:20 sthen Exp $

COMMENT=		generic object relational mapper for Python

MODPY_EGG_VERSION=	0.19
DISTNAME=		storm-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		databases

HOMEPAGE=		https://storm.canonical.com/

MAINTAINER=		Eric Faurot <eric@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MASTER_SITES=		http://launchpad.net/storm/trunk/0.19/+download/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	databases/py-sqlite2

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} ./test --verbose

.include <bsd.port.mk>
