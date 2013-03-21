# $OpenBSD: Makefile,v 1.10 2013/03/21 08:45:15 ajacoutot Exp $

COMMENT=		lightweight C library that eases the writing of daemons

DISTNAME=		libdaemon-0.14
SHARED_LIBS+=		daemon	3.2	# .5.0
CATEGORIES=		devel

HOMEPAGE=		http://0pointer.de/lennart/projects/libdaemon/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	${CONFIGURE_SHARED} \
			--disable-lynx


.include <bsd.port.mk>
