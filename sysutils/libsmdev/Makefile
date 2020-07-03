# $OpenBSD: Makefile,v 1.8 2020/07/03 21:13:10 sthen Exp $

COMMENT =	library to access to storage media devices

VERSION = 	20200210
DISTNAME =	libsmdev-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}
REVISION =	0

SHARED_LIBS +=  smdev                      0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libsmdev/wiki

MASTER_SITES =	https://github.com/libyal/libsmdev/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += c iconv intl m pthread util

BUILD_DEPENDS +=	devel/gettext,-tools

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS += shells/bash

.include <bsd.port.mk>
