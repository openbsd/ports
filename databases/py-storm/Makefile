# $OpenBSD: Makefile,v 1.1.1.1 2007/12/23 18:29:00 merdely Exp $

COMMENT=		generic object relational mapper for Python

V=			0.11
DISTNAME=		storm-$V
PKGNAME=		py-${DISTNAME}

CATEGORIES=		databases

HOMEPAGE=		https://storm.canonical.com/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		https://launchpad.net/storm/trunk/$V/+download/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	::databases/py-sqlite2

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./test

.include <bsd.port.mk>
