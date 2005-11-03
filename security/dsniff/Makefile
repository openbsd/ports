# $OpenBSD: Makefile,v 1.38 2005/11/03 18:28:56 naddy Exp $

COMMENT=	"sniffing tools for penetration testing"

DISTNAME=	dsniff-2.3
PKGNAME=	${DISTNAME}p2
CATEGORIES=	security

MASTER_SITES=	http://monkey.org/~dugsong/dsniff/

HOMEPAGE=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	::net/libnids
LIB_DEPENDS=	lib/db/db.=3:db-3.*:databases/db/v3 \
		lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto des pcap ssl rpcsvc

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I/usr/local/include/db"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+=	--without-x
.else
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xmu
.endif

NO_REGRESS=	Yes

FAKE_FLAGS=	install_prefix="${WRKINST}"

.include <bsd.port.mk>
