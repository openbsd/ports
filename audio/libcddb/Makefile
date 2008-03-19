# $OpenBSD: Makefile,v 1.1.1.1 2008/03/19 14:37:54 jasper Exp $

COMMENT=		library to access data on a CDDB server

DISTNAME=		libcddb-1.3.0
CATEGORIES=		audio devel
SHARED_LIBS +=	cddb                 0.0      # .4.3

HOMEPAGE=		http://libcddb.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libcddb/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		converters/libiconv

WANTLIB=		c

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-cdio
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
