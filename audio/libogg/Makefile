# $OpenBSD: Makefile,v 1.14 2004/09/17 15:39:58 naddy Exp $

COMMENT=	"Ogg bitstream library"

DISTNAME=	libogg-1.1.1
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ogg/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ogg/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
SEPARATE_BUILD=	simple

.include <bsd.port.mk>
