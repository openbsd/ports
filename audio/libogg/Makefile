# $OpenBSD: Makefile,v 1.38 2019/05/05 04:31:21 bentley Exp $

COMMENT=	Ogg bitstream library

DISTNAME=	libogg-1.3.3
CATEGORIES=    	audio
HOMEPAGE=	https://www.xiph.org/ogg/
SHARED_LIBS=	ogg	6.2	# 8.3

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://downloads.xiph.org/releases/ogg/
EXTRACT_SUFX=	.tar.xz

CONFIGURE_STYLE=gnu
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
