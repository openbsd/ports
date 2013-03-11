# $OpenBSD: Makefile,v 1.13 2013/03/11 11:41:25 espie Exp $

COMMENT=	application for managing passwords

MODPY_EGG_VERSION=	0.4.0
DISTNAME=	kedpm-${MODPY_EGG_VERSION}
REVISION=	7
CATEGORIES=	security

HOMEPAGE=	http://kedpm.sourceforge.net/

MAINTAINER=	Joerg Zinke <mail@umaxx.net>

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
