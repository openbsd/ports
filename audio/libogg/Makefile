# $OpenBSD: Makefile,v 1.31 2013/03/10 22:55:03 espie Exp $

COMMENT=	Ogg bitstream library

DISTNAME=	libogg-1.3.0
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ogg/
SHARED_LIBS=	ogg	6.2	# 8.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ogg/

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
