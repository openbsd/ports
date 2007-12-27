# $OpenBSD: Makefile,v 1.22 2007/12/27 16:29:54 espie Exp $

COMMENT=	Ogg bitstream library

DISTNAME=	libogg-1.1.3
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ogg/
SHARED_LIBS +=	ogg                  5.3      # .5.3

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ogg/

MAKE_FLAGS=mkdir_p="mkdir -p"
FAKE_FLAGS=${MAKE_FLAGS} DESTDIR=${WRKINST}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
SEPARATE_BUILD=	simple

.include <bsd.port.mk>
