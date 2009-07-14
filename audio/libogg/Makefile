# $OpenBSD: Makefile,v 1.25 2009/07/14 15:45:21 naddy Exp $

COMMENT=	Ogg bitstream library

DISTNAME=	libogg-1.1.4
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ogg/
SHARED_LIBS +=	ogg                  6.0      # .6.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ogg/

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
SEPARATE_BUILD=	simple

# required for MAKE_JOBS > 1
MAKE_FLAGS=	MKDIR_P="mkdir -p"

.include <bsd.port.mk>
