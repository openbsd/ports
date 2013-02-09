# $OpenBSD: Makefile,v 1.58 2013/02/09 14:49:52 sthen Exp $

COMMENT=	sniffing tools for penetration testing

DISTNAME=	dsniff-2.3
REVISION=	13
CATEGORIES=	security

MASTER_SITES=	http://monkey.org/~dugsong/dsniff/

HOMEPAGE=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	net/libnids
LIB_DEPENDS=	databases/db/v3 \
		net/libnet/1.0
WANTLIB=	c crypto pcap ssl rpcsvc lib/db/db=3 lib/libnet-1.0/net=0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

NO_REGRESS=	Yes

DESTDIRNAME=	install_prefix

.include <bsd.port.mk>
