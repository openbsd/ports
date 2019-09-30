# $OpenBSD: Makefile,v 1.28 2019/09/30 22:58:03 jca Exp $

COMMENT=	getopt(3)-like library with a number of enhancements

DISTNAME=	popt-1.16
CATEGORIES=	devel
MASTER_SITES=	http://ftp.rpm.org/mirror/popt/
REVISION=	2

SHARED_LIBS=	popt	1.0

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	iconv intl

LIB_DEPENDS=	devel/gettext,-runtime

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
