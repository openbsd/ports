# $OpenBSD: Makefile,v 1.8 2009/10/16 15:17:02 eric Exp $

COMMENT=		generic object relational mapper for Python

MODPY_EGG_VERSION=	0.15
DISTNAME=		storm-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		databases

HOMEPAGE=		https://storm.canonical.com/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://launchpad.net/storm/trunk/${MODPY_EGG_VERSION}/+download/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	::databases/py-sqlite2

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./test

.include <bsd.port.mk>
