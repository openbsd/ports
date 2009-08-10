# $OpenBSD: Makefile,v 1.46 2009/08/10 06:34:29 kili Exp $

COMMENT=	sniffing tools for penetration testing

DISTNAME=	dsniff-2.3
PKGNAME=	${DISTNAME}p8
CATEGORIES=	security

MASTER_SITES=	http://monkey.org/~dugsong/dsniff/

HOMEPAGE=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	::net/libnids
LIB_DEPENDS=	lib/db/db.=3:db->=3,<4:databases/db/v3 \
		lib/libnet-1.0/net.=0:libnet->=1.0,<1.1:net/libnet/1.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto des pcap ssl rpcsvc

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/db"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+=	--without-x
.else
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xmu pthread-stubs xcb
.endif

NO_REGRESS=	Yes

DESTDIRNAME=	install_prefix

.include <bsd.port.mk>
