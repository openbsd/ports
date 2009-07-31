# $OpenBSD: Makefile,v 1.4 2009/07/31 09:55:01 ajacoutot Exp $

COMMENT=	modified libical library for Zarafa

DISTNAME=	libical-0.42
PKGNAME=	zarafa-${DISTNAME}

# We patched the source to rename the libraries so that this package can
# cohabitate with the "official" one (i.e. textproc/libical).
SHARED_LIBS+=	ical-zarafa	1.0 # .0.0
SHARED_LIBS+=	icalss-zarafa	1.0 # .0.0
SHARED_LIBS+=	icalvcal-zarafa	1.0 # .0.0

CATEGORIES=	textproc

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--includedir=${PREFIX}/include/zarafa \
		--enable-python=no \
		--enable-java=no \
		--enable-cxx=no \
		--without-bdb4

REGRESS_DEPENDS= ::${BASE_PKGPATH}
REGRESS_FLAGS=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include/zarafa"

.include <bsd.port.mk>
