# $OpenBSD: Makefile,v 1.60 2013/06/19 03:40:23 lteo Exp $

COMMENT=	sniffing tools for penetration testing

DISTNAME=	dsniff-2.3
REVISION=	14
CATEGORIES=	security

MASTER_SITES=	http://monkey.org/~dugsong/dsniff/

HOMEPAGE=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	net/libnids
LIB_DEPENDS=	databases/db/v3 \
		net/libnet/1.0
WANTLIB=	c crypto pcap ssl rpcsvc lib/db/db=3 lib/libnet-1.0/net=0

# BSD
PERMIT_PACKAGE_CDROM=	Yes

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/db"
USE_GROFF =		Yes

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR} == "no_x11"
CONFIGURE_ARGS+=	--without-x
.else
WANTLIB+=	ICE SM X11 Xmu
.endif

NO_TEST=	Yes

DESTDIRNAME=	install_prefix

.include <bsd.port.mk>
