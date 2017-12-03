# $OpenBSD: Makefile,v 1.18 2017/12/03 13:04:26 ajacoutot Exp $

COMMENT=	ILM base libraries

DISTNAME=	ilmbase-2.2.1
CATEGORIES=	graphics

SHARED_LIBS +=	Half                 5.0      # 23.0
SHARED_LIBS +=	Iex                  5.0      # 23.0
SHARED_LIBS +=	IexMath              0.0      # 23.0
SHARED_LIBS +=	Imath                5.0      # 23.0
SHARED_LIBS +=	IlmThread            5.0      # 23.0

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
