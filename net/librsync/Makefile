# $OpenBSD: Makefile,v 1.14 2015/08/19 18:55:04 sthen Exp $

COMMENT=	library for delta compression of streams
DISTNAME=	librsync-0.9.7
REVISION=	3
SHARED_LIBS=	rsync 1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=librsync/}
HOMEPAGE=	http://librsync.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes

LIB_DEPENDS=		archivers/bzip2 \
			devel/popt

MODULES=		devel/gettext
WANTLIB=		c z bz2 popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --disable-trace
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
