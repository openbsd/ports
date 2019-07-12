# $OpenBSD: Makefile,v 1.5 2019/07/12 20:44:39 sthen Exp $

COMMENT =	fast-samples based normalization library

DISTNAME =	liblognorm-2.0.6

SHARED_LIBS +=	lognorm		0.1 # 6.0

CATEGORIES =	devel

HOMEPAGE =	https://www.liblognorm.com/

# LGPLv2.1+ + Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c estr fastjson

MASTER_SITES =	https://www.liblognorm.com/files/download/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

LIB_DEPENDS =	devel/libestr \
		devel/libfastjson

TEST_DEPENDS =	shells/bash

SEPARATE_BUILD = Yes

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	sed -i s,#!/bin/bash,#!${LOCALBASE}/bin/bash, ${WRKSRC}/tests/*.sh

.include <bsd.port.mk>
