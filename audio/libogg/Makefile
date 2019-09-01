# $OpenBSD: Makefile,v 1.40 2019/09/01 18:04:25 naddy Exp $

COMMENT=	Ogg bitstream library

DISTNAME=	libogg-1.3.4
CATEGORIES=    	audio
HOMEPAGE=	https://www.xiph.org/ogg/
SHARED_LIBS=	ogg	6.2	# 8.4

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://downloads.xiph.org/releases/ogg/
EXTRACT_SUFX=	.tar.xz

CONFIGURE_STYLE=gnu
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
