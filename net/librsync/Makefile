# $OpenBSD: Makefile,v 1.2 2007/09/15 22:36:55 merdely Exp $

COMMENT=	Library for delta compression of streams
DISTNAME=	librsync-0.9.7
SHARED_LIBS=	rsync 0.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=librsync/}
HOMEPAGE=	http://librsync.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		c z

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --disable-trace

.include <bsd.port.mk>
