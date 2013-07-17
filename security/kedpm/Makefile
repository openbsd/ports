# $OpenBSD: Makefile,v 1.14 2013/07/17 03:27:01 bentley Exp $

COMMENT=	application for managing passwords

MODPY_EGG_VERSION=	0.4.0
DISTNAME=	kedpm-${MODPY_EGG_VERSION}
REVISION =	8
CATEGORIES=	security

HOMEPAGE=	http://kedpm.sourceforge.net/

MAINTAINER =	Joerg Jung <jung@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kedpm/}

RUN_DEPENDS=	x11/py-gtk2 \
		security/py-crypto
TEST_DEPENDS=${RUN_DEPENDS}

MODULES=	lang/python

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} ./run_tests

.include <bsd.port.mk>
