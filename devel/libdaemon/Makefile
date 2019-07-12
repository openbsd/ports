# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:37 sthen Exp $

COMMENT=		lightweight C library that eases the writing of daemons

DISTNAME=		libdaemon-0.14
REVISION=		1
SHARED_LIBS+=		daemon	4.0	# .5.0
CATEGORIES=		devel

HOMEPAGE=		http://0pointer.de/lennart/projects/libdaemon/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--disable-lynx


.include <bsd.port.mk>
