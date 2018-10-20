# $OpenBSD: Makefile,v 1.19 2018/10/20 17:48:16 naddy Exp $

# invalid use of `restrict'
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT=	IETF audio codec

DISTNAME=	opus-1.3
SHARED_LIBS=	opus		1.2	# 7.0
CATEGORIES=	audio

HOMEPAGE=	https://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://archive.mozilla.org/pub/opus/

WANTLIB=	m

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc	# requires doxygen

.include <bsd.port.mk>
