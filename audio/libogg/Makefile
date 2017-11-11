# $OpenBSD: Makefile,v 1.37 2017/11/11 20:21:05 naddy Exp $

COMMENT=	Ogg bitstream library

DISTNAME=	libogg-1.3.3
CATEGORIES=    	audio
HOMEPAGE=	https://www.xiph.org/ogg/
SHARED_LIBS=	ogg	6.2	# 8.3

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ogg/
EXTRACT_SUFX=	.tar.xz

CONFIGURE_STYLE=gnu
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
