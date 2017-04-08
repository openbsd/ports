# $OpenBSD: Makefile,v 1.2 2017/04/08 04:26:26 rpointel Exp $

COMMENT =	library to access to storage media devices

VERSION = 	20170225
DISTNAME =	libsmdev-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}

SHARED_LIBS +=  smdev                      0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libsmdev/wiki

MASTER_SITES =	https://github.com/libyal/libsmdev/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	devel/gettext \
		lang/python

TEST_DEPENDS += shells/bash

.include <bsd.port.mk>
