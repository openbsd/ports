# $OpenBSD: Makefile,v 1.13 2013/04/01 14:05:37 sthen Exp $

COMMENT=	BIND stub resolver library

V=		6.0
DISTNAME=	libbind-6.0
EPOCH=		0

SHARED_LIBS +=	bind                      3.0 # 6.1

CATEGORIES=	net

HOMEPAGE=	http://www.isc.org/software/libbind

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_ISC:=libbind/$V/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-libtool

NO_TEST=	Yes

post-install:
	rm -f ${PREFIX}/man/cat?/*

.include <bsd.port.mk>
