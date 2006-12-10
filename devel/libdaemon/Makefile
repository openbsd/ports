# $OpenBSD: Makefile,v 1.1.1.1 2006/12/10 21:42:29 jasper Exp $

COMMENT=		"lightweight C library that eases the writing of daemons"

DISTNAME=		libdaemon-0.10
SHARED_LIBS+=		daemon	2.4	#.2.4
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
