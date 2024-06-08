COMMENT=		tool for capturing data from TCP connections

V=			1.6.1
DISTNAME=		tcpflow-${V}
CATEGORIES=		net

SITES=			https://github.com/simsong/tcpflow/releases/download/tcpflow-${V}/

HOMEPAGE=		https://github.com/simsong/tcpflow

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto m pcap sqlite3 ssl z

COMPILER=		base-clang ports-gcc

BUILD_DEPENDS=		devel/boost
LIB_DEPENDS=		databases/sqlite3

# a test for cairo has a side effect which brokes pcap test
# when it can't find cairo, so, disable it.
CONFIGURE_ARGS=		--enable-cairo=false

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoreconf

.include <bsd.port.mk>
