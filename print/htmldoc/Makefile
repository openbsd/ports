# $OpenBSD: Makefile,v 1.2 2001/02/21 23:36:28 avsm Exp $

DISTNAME=		htmldoc-1.8.11
CATEGORIES=     	print www
NEED_VERSION=		1.354

HOMEPAGE=		http://www.easysw.com/htmldoc
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# no_x11 build is broken in this version
USE_X11=		Yes

DISTFILES=		${DISTNAME}-source${EXTRACT_SUFX}
EXTRACT_SUFX=		.zip
MASTER_SITES=		ftp://ftp.easysw.com/pub/htmldoc/1.8.11/

BUILD_DEPENDS=		${LOCALBASE}/bin/fluid::x11/fltk
LIB_DEPENDS=		png.1::graphics/png \
			jpeg.62::graphics/jpeg

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV= 		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
