# $OpenBSD: Makefile,v 1.13 2011/06/08 17:33:59 jasper Exp $

COMMENT=		generic object relational mapper for Python

MODPY_EGG_VERSION=	0.18
DISTNAME=		storm-${MODPY_EGG_VERSION}
REVISION =		0
PKGNAME=		py-${DISTNAME}

CATEGORIES=		databases

HOMEPAGE=		https://storm.canonical.com/

MAINTAINER=		Eric Faurot <eric@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://launchpad.net/storm/trunk/0.18/+download/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	databases/py-sqlite2

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./test

.include <bsd.port.mk>
