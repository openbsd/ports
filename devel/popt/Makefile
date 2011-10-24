# $OpenBSD: Makefile,v 1.19 2011/10/24 18:52:18 jasper Exp $

COMMENT=	getopt(3)-like library with a number of enhancements

DISTNAME=	popt-1.16
CATEGORIES=	devel
MASTER_SITES=	http://rpm5.org/files/popt/

SHARED_LIBS=	popt	1.0

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
