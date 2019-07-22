# $OpenBSD: Makefile,v 1.6 2019/07/22 16:13:08 ajacoutot Exp $

COMMENT =	library to access to storage media devices

VERSION = 	20171112
DISTNAME =	libsmdev-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}

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
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

TEST_DEPENDS += shells/bash

.include <bsd.port.mk>
