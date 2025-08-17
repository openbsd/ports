COMMENT =		UPnP client library

DISTNAME =		libupnpp-1.0.3

SHARED_LIBS +=	upnpp                     2.0 # 8.1.0

CATEGORIES =		net

HOMEPAGE =		https://www.lesbonscomptes.com/upmpdcli/libupnpp-refdoc/libupnpp-ctl.html

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} curl expat m npupnp

SITES =			https://www.lesbonscomptes.com/upmpdcli/downloads/

MODULES =		devel/meson

# C++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		net/curl \
			net/libnpupnp

.include <bsd.port.mk>
