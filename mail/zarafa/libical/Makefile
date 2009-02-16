# $OpenBSD: Makefile,v 1.3 2009/02/16 10:13:50 jasper Exp $

COMMENT=	modified libical library for Zarafa

DISTNAME=	libical-0.23
PKGNAME=	zarafa-${DISTNAME}

# We patched the source to rename the libraries so that this package can
# cohabitate with the "official" one (i.e. textproc/libical).
SHARED_LIBS+=	ical-zarafa	0.0 # .0.0
SHARED_LIBS+=	icalss-zarafa	0.0 # .0.0
SHARED_LIBS+=	icalvcal-zarafa	0.0 # .0.0

CATEGORIES=	textproc

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--includedir=${PREFIX}/include/zarafa \
		--enable-python-bindings=no

.include <bsd.port.mk>
