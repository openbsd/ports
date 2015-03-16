# $OpenBSD: Makefile,v 1.13 2015/03/16 18:07:52 naddy Exp $

COMMENT=	Library for delta compression of streams
DISTNAME=	librsync-0.9.7
REVISION=	2
SHARED_LIBS=	rsync 1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=librsync/}
HOMEPAGE=	http://librsync.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes

LIB_DEPENDS=		archivers/bzip2 \
			devel/popt

WANTLIB=		c z bz2 popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --disable-trace
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
