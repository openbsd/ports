# $OpenBSD: Makefile,v 1.13 2016/06/23 16:15:58 sthen Exp $

COMMENT=		geographically-aware, authoritative-only DNS server

V=			2.2.4
DISTNAME=		gdnsd-$V
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		net

HOMEPAGE=		http://gdnsd.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ev m pthread

MASTER_SITES=		https://github.com/gdnsd/gdnsd/releases/download/v$V/

USE_GMAKE=		Yes
MODULES=		gcc4 # for thread-local storage
MODGCC4_ARCHS=		*

BUILD_DEPENDS=		devel/ragel
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

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-rundir=${VARBASE}/run/ \
			--with-rootdir=${VARBASE}/gdnsd
CONFIGURE_ENV=		LIBEV_LIBS="-L${LOCALBASE}/lib -lev" \
			LIBEV_CFLAGS="-I${LOCALBASE}/include"

SUBST_VARS+=		VARBASE

# XXX: Hangs, though doesn't seem to be gdnsd's fault
pre-test:
	rm -f ${WRKSRC}/t/003complex/009broken.t

post-install:
	rm ${PREFIX}/lib/gdnsd/*.la

.include <bsd.port.mk>
