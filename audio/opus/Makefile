# $OpenBSD: Makefile,v 1.21 2019/07/12 20:43:37 sthen Exp $

COMMENT=	IETF audio codec

DISTNAME=	opus-1.3.1
SHARED_LIBS=	opus		1.3	# 8.0
CATEGORIES=	audio

HOMEPAGE=	https://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://archive.mozilla.org/pub/opus/

WANTLIB=	m

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc	# requires doxygen

.include <bsd.port.mk>
