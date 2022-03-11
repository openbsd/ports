COMMENT=		geographically-aware, authoritative-only DNS server

V=			2.4.3
REVISION=		1
DISTNAME=		gdnsd-$V
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		net

HOMEPAGE=		https://gdnsd.org/

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=		c ev m maxminddb pthread

MASTER_SITES=		https://github.com/gdnsd/gdnsd/releases/download/v$V/

USE_GMAKE=		Yes
# TLS
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS=		devel/ragel
# used for tests
BUILD_DEPENDS+=		archivers/xz \
			net/curl
LIB_DEPENDS=		devel/libev \
			net/libmaxminddb
RUN_DEPENDS=		net/libmaxminddb,-city \
			net/libmaxminddb,-db
TEST_DEPENDS=		${BUILD_DEPENDS} \
			www/p5-libwww \
			net/p5-Socket6 \
			net/p5-IO-Socket-INET6 \
			net/p5-Net-DNS

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS+=	--with-rundir=${VARBASE}/run/ \
			--with-rootdir=${VARBASE}/gdnsd \
			--without-urcu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

SUBST_VARS+=		VARBASE

# XXX: Hangs, though doesn't seem to be gdnsd's fault
pre-test:
	rm -f ${WRKSRC}/t/003complex/009broken.t

post-install:
	rm ${PREFIX}/lib/gdnsd/*.la

.include <bsd.port.mk>
