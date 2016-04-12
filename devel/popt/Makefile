# $OpenBSD: Makefile,v 1.25 2016/04/12 15:19:40 naddy Exp $

COMMENT=	getopt(3)-like library with a number of enhancements

DISTNAME=	popt-1.16
CATEGORIES=	devel
MASTER_SITES=	http://rpm5.org/files/popt/
REVISION=	1

SHARED_LIBS=	popt	1.0

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	iconv intl

LIB_DEPENDS=	devel/gettext

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
