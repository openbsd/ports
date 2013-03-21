# $OpenBSD: Makefile,v 1.32 2013/03/21 08:45:12 ajacoutot Exp $

COMMENT=	Ogg bitstream library

DISTNAME=	libogg-1.3.0
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ogg/
SHARED_LIBS=	ogg	6.2	# 8.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ogg/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
