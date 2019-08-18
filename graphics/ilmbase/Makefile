# $OpenBSD: Makefile,v 1.21 2019/08/18 20:43:14 ajacoutot Exp $

COMMENT=		ILM base libraries

V=			2.3.0
DISTNAME=		ilmbase-${V}
CATEGORIES=		graphics

SHARED_LIBS +=	Half                 6.0      # 24.0
SHARED_LIBS +=	Iex                  6.0      # 24.0
SHARED_LIBS +=	IexMath              1.0      # 24.0
SHARED_LIBS +=	Imath                6.0      # 24.0
SHARED_LIBS +=	IlmThread            6.0      # 24.0

HOMEPAGE=		http://www.openexr.com/

# Modified BSD license
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE=		Yes

WANTLIB += m pthread ${COMPILER_LIBCXX}

MASTER_SITES=		https://github.com/openexr/openexr/releases/download/v${V}/

COMPILER=		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		shells/bash

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-namespaceversioning

post-patch:
	sed -i 's,^#! /bin/sh,#!/usr/bin/env bash,' ${WRKSRC}/configure

.include <bsd.port.mk>
