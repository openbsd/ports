COMMENT=		tool for capturing data from TCP connections

V=			1.6.1
DISTNAME=		tcpflow-${V}
CATEGORIES=		net
REVISION=		0

SITES=			https://github.com/simsong/tcpflow/releases/download/tcpflow-${V}/

HOMEPAGE=		https://github.com/simsong/tcpflow

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto m pcap sqlite3 ssl z

COMPILER=		base-clang ports-gcc

BUILD_DEPENDS=		devel/boost
LIB_DEPENDS=		databases/sqlite3

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS=		--enable-cairo=false \
			--without-o3
# Forcefully disable detection of unwanted optional deps
CONFIGURE_ENV=		ac_cv_header_tre_tre_h=no \
			ac_cv_lib_tre_tre_regcomp=no

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

.include <bsd.port.mk>
