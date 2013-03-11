# $OpenBSD: Makefile,v 1.21 2013/03/11 10:50:24 espie Exp $

COMMENT=	getopt(3)-like library with a number of enhancements

DISTNAME=	popt-1.16
CATEGORIES=	devel
MASTER_SITES=	http://rpm5.org/files/popt/

SHARED_LIBS=	popt	1.0

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
