# $OpenBSD: Makefile,v 1.2 2007/06/26 17:07:54 steven Exp $

COMMENT=		"lightweight C library that eases the writing of daemons"

DISTNAME=		libdaemon-0.11
SHARED_LIBS+=		daemon	3.0	#.3.0
CATEGORIES=		devel

HOMEPAGE=		http://0pointer.de/lennart/projects/libdaemon/

# LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--disable-lynx

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
