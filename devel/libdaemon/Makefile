# $OpenBSD: Makefile,v 1.11 2014/02/04 02:51:15 william Exp $

COMMENT=		lightweight C library that eases the writing of daemons

DISTNAME=		libdaemon-0.14
REVISION=		0
SHARED_LIBS+=		daemon	4.0	# .5.0
CATEGORIES=		devel

HOMEPAGE=		http://0pointer.de/lennart/projects/libdaemon/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	${CONFIGURE_SHARED} \
			--disable-lynx


.include <bsd.port.mk>
