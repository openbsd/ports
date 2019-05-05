# $OpenBSD: Makefile,v 1.3 2019/05/05 16:35:59 remi Exp $

COMMENT =	fast-samples based normalization library

DISTNAME =	liblognorm-2.0.6

SHARED_LIBS +=	lognorm		0.1 # 6.0

CATEGORIES =	devel

HOMEPAGE =	https://www.liblognorm.com/

# LGPLv2.1+ + Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c estr fastjson

MASTER_SITES =	https://www.liblognorm.com/files/download/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

LIB_DEPENDS =	devel/libestr \
		devel/libfastjson

TEST_DEPENDS =	shells/bash

SEPARATE_BUILD = Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	sed -i s,#!/bin/bash,#!${LOCALBASE}/bin/bash, ${WRKSRC}/tests/*.sh

post-patch:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    autoreconf -vfi

.include <bsd.port.mk>
