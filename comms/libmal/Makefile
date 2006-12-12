# $OpenBSD: Makefile,v 1.1.1.1 2006/12/12 08:49:21 ajacoutot Exp $

COMMENT=	"MAL convenience library"

DISTNAME=	libmal-0.43
SHARED_LIBS +=	mal 1.0				# .1.0
CATEGORIES=	comms palm

HOMEPAGE=	http://jasonday.home.att.net/code/libmal/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c

LIB_DEPENDS=	pisock.>=9::comms/pilot-link

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
