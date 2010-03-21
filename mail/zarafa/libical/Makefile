# $OpenBSD: Makefile,v 1.7 2010/03/21 11:08:53 ajacoutot Exp $

COMMENT=	modified libical library for Zarafa

DISTNAME=	libical-0.44
PKGNAME=	zarafa-${DISTNAME}p0

# We patched the source to rename the libraries so that this package can
# cohabitate with the "official" one (i.e. textproc/libical).
SHARED_LIBS+=	ical-zarafa	2.0 # .44.0
SHARED_LIBS+=	icalss-zarafa	2.0 # .44.0
SHARED_LIBS+=	icalvcal-zarafa	2.0 # .44.0

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
