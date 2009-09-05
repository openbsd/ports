# $OpenBSD: Makefile,v 1.5 2009/09/05 12:59:26 ajacoutot Exp $

COMMENT=	modified libical library for Zarafa

DISTNAME=	libical-0.42
PKGNAME=	zarafa-${DISTNAME}p0

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
