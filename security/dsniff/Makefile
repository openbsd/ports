# $OpenBSD: Makefile,v 1.22 2001/10/15 21:04:11 espie Exp $

COMMENT=	"sniffing tools for penetration testing"

DISTNAME=	dsniff-2.3
CATEGORIES=	security
NEED_VERSION=	1.474
MASTER_SITES=	http://www.monkey.org/~dugsong/dsniff/

HOMEPAGE=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	${LOCALBASE}/lib/libnids.a::net/libnids
LIB_DEPENDS=	db.3::databases/db \
		net::net/libnet


MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS=	--without-x
.else
USE_X11=	Yes
.endif

FAKE_FLAGS=	install_prefix="${WRKINST}"

.include <bsd.port.mk>
