# $OpenBSD: Makefile,v 1.11 2013/03/21 08:46:34 ajacoutot Exp $

COMMENT=	Library for delta compression of streams
DISTNAME=	librsync-0.9.7
REVISION=	1
SHARED_LIBS=	rsync 1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=librsync/}
HOMEPAGE=	http://librsync.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes

LIB_DEPENDS=		archivers/bzip2 \
			devel/popt

WANTLIB=		c z bz2 popt

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --disable-trace
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
