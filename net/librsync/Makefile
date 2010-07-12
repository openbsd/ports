# $OpenBSD: Makefile,v 1.6 2010/07/12 22:07:39 sthen Exp $

COMMENT=	Library for delta compression of streams
DISTNAME=	librsync-0.9.7
REVISION=	1
SHARED_LIBS=	rsync 1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=librsync/}
HOMEPAGE=	http://librsync.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=		bz2::archivers/bzip2 \
			popt::devel/popt

WANTLIB=		c z

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --disable-trace
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
