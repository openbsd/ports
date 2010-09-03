# $OpenBSD: Makefile,v 1.8 2010/09/03 14:39:07 sthen Exp $

COMMENT=	MAL convenience library

DISTNAME=	libmal-0.44.1
SHARED_LIBS +=	mal 1.0				# .1.0
CATEGORIES=	comms palm

HOMEPAGE=	http://www.jlogday.com/code/libmal/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c pisock.>=9 pthread

LIB_DEPENDS=	::comms/pilot-link

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

MAKE_FLAGS+=	CFLAGS="${CFLAGS} -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
