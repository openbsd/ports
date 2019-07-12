# $OpenBSD: Makefile,v 1.63 2019/07/12 20:49:01 sthen Exp $

COMMENT=	sniffing tools for penetration testing

DISTNAME=	dsniff-2.3
REVISION=	16
CATEGORIES=	security

MASTER_SITES=	http://monkey.org/~dugsong/dsniff/

HOMEPAGE=	http://www.monkey.org/~dugsong/dsniff/

LIB_DEPENDS=	databases/db/v3 \
		net/libnet/1.0 \
		net/libnids

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto pcap nids ssl rpcsvc lib/db/db=3 lib/libnet-1.0/net=0

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/db"

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
