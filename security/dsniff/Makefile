# $OpenBSD: Makefile,v 1.31 2004/05/04 20:04:16 david Exp $

COMMENT=	"sniffing tools for penetration testing"

DISTNAME=	dsniff-2.3
CATEGORIES=	security

MASTER_SITES=	http://monkey.org/~dugsong/dsniff/

HOMEPAGE=	http://www.monkey.org/~dugsong/dsniff/

MAINTAINER=	Jose Nazario <jose@crimelabs.net>

BUILD_DEPENDS=	::net/libnids
LIB_DEPENDS=	lib/db/db.3:db->3,<4:databases/db/v3 \
		net::net/libnet

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I/usr/local/include/db"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+=	--without-x
.else
USE_X11=	Yes
.endif

NO_REGRESS=	Yes

FAKE_FLAGS=	install_prefix="${WRKINST}"

.include <bsd.port.mk>
