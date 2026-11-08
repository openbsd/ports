COMMENT=		tool for capturing data from TCP connections

V=			1.7.0
DISTNAME=		tcpflow-${V}
CATEGORIES=		net

SITES=			https://github.com/simsong/tcpflow/releases/download/v${V}/

HOMEPAGE=		https://github.com/simsong/tcpflow

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto m pcap sqlite3 ssl z

COMPILER=		base-clang ports-gcc

BUILD_DEPENDS=		devel/boost
LIB_DEPENDS=		databases/sqlite3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-cairo=false \
			--without-o3
# Forcefully disable detection of unwanted optional deps
CONFIGURE_ENV=		ac_cv_header_tre_tre_h=no \
			ac_cv_lib_tre_tre_regcomp=no

.include <bsd.port.mk>
