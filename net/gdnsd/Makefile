# $OpenBSD: Makefile,v 1.12 2016/03/16 21:19:38 naddy Exp $

PORTROACH=		limit:^v1
PORTROACH_COMMENT=	gdnsd >= 2.0.0 requires __thread support

COMMENT=		geographically-aware, authoritative-only DNS server

GH_ACCOUNT=		blblack
GH_PROJECT=		gdnsd
GH_TAGNAME=		v1.11.5
REVISION=		4

CATEGORIES=		net

HOMEPAGE=		http://gdnsd.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ev m pthread

BUILD_DEPENDS=		devel/libtool \
			devel/ragel \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
# used for tests
BUILD_DEPENDS+=		archivers/xz \
			net/curl
LIB_DEPENDS=		devel/libev
RUN_DEPENDS=		net/GeoIP,-city \
			net/GeoIP,-db
TEST_DEPENDS=		${BUILD_DEPENDS} \
			www/p5-libwww \
			net/p5-Socket6 \
			net/p5-IO-Socket-INET6 \
			net/p5-Net-DNS

AUTOCONF_VERSION=	2.63
AUTOMAKE_VERSION=	1.11

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-rundir=${VARBASE}/run/ \
			--with-rootdir=${VARBASE}/gdnsd
CONFIGURE_ENV=		LIBEV_LIBS="-L${LOCALBASE}/lib -lev" \
			LIBEV_CFLAGS="-I${LOCALBASE}/include"

SUBST_VARS+=		VARBASE

# XXX: At least one of these hangs, though doesn't seem to be gdnsd's fault
post-extract:
	rm -r ${WRKSRC}/t/003complex

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

post-install:
	rm ${PREFIX}/lib/gdnsd/*.la
	rm ${PREFIX}/share/doc/gdnsd/*.pod

.include <bsd.port.mk>
