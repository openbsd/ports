# $OpenBSD: Makefile,v 1.34 2005/01/12 21:31:06 sturm Exp $

COMMENT=	"sniffing tools for penetration testing"

DISTNAME=	dsniff-2.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

MASTER_SITES=	http://monkey.org/~dugsong/dsniff/

HOMEPAGE=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	::net/libnids
LIB_DEPENDS=	lib/db/db.=3:db-3.*:databases/db/v3 \
		net::net/libnet

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto des pcap ssl

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
