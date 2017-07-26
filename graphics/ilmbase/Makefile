# $OpenBSD: Makefile,v 1.17 2017/07/26 22:45:24 sthen Exp $

COMMENT=	ILM base libraries

DISTNAME=	ilmbase-2.2.0
CATEGORIES=	graphics
REVISION=	0

SHARED_LIBS +=	Half                 5.0      # 12.0
SHARED_LIBS +=	Iex                  5.0      # 12.0
SHARED_LIBS +=	IexMath              0.0      # 12.0
SHARED_LIBS +=	Imath                5.0      # 12.0
SHARED_LIBS +=	IlmThread            5.0      # 12.0

HOMEPAGE=	http://www.openexr.com/

# Modified BSD license
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=openexr/}

BUILD_DEPENDS=	shells/bash

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-namespaceversioning

post-patch:
	# !@$#!%
	sed -i 's,^#! /bin/sh,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/configure

.include <bsd.port.mk>
