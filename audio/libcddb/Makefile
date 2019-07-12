# $OpenBSD: Makefile,v 1.7 2019/07/12 20:43:34 sthen Exp $

COMMENT=		library to access data on a CDDB server

DISTNAME=		libcddb-1.3.2
CATEGORIES=		audio devel
SHARED_LIBS +=	cddb                 0.1      # .4.3
REVISION=		0

HOMEPAGE=		http://libcddb.sourceforge.net/

# LGPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libcddb/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		converters/libiconv

WANTLIB=		c iconv


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-cdio
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
