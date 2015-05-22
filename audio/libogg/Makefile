# $OpenBSD: Makefile,v 1.35 2015/05/22 11:31:10 ajacoutot Exp $

COMMENT=	Ogg bitstream library

DISTNAME=	libogg-1.3.2
CATEGORIES=    	audio
HOMEPAGE=	https://www.xiph.org/ogg/
SHARED_LIBS=	ogg	6.2	# 8.2
REVISION=	0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ogg/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
