# $OpenBSD: Makefile,v 1.39 2019/07/12 20:43:35 sthen Exp $

COMMENT=	Ogg bitstream library

DISTNAME=	libogg-1.3.3
CATEGORIES=    	audio
HOMEPAGE=	https://www.xiph.org/ogg/
SHARED_LIBS=	ogg	6.2	# 8.3

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://downloads.xiph.org/releases/ogg/
EXTRACT_SUFX=	.tar.xz

CONFIGURE_STYLE=gnu
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
