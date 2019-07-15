# $OpenBSD: Makefile,v 1.22 2019/07/15 08:47:45 sthen Exp $

COMMENT=	BIND stub resolver library for special use cases

# XXX As mentioned in pkg/DESCR:
#
# This port is not for general purpose use and has known issues; it is
# intended *only* for special cases where software relies on resolver
# internals and cannot be adapted to the standard resolver in libc
# or use an alternative library. There are symbol conflicts; expect
# crashes and corruption in some cases.

V=		6.0
DISTNAME=	libbind-6.0
EPOCH=		0
REVISION=	5

SHARED_LIBS +=	bind                      6.0 # 6.1

CATEGORIES=	net

HOMEPAGE=	http://www.isc.org/software/libbind

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_ISC:=libbind/$V/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libtool \
			--libdir=${TRUEPREFIX}/lib/libbind

NO_TEST=	Yes

post-install:
	rm -f ${PREFIX}/man/cat?/*

.include <bsd.port.mk>
