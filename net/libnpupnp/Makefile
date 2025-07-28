COMMENT =		C++ base UPnP library

DISTNAME =		libnpupnp-6.2.1

SHARED_LIBS +=	npupnp                    0.0 # 0.0

CATEGORIES =		net

HOMEPAGE =		https://www.lesbonscomptes.com/upmpdcli/libupnpp-refdoc/libupnpp-ctl.html

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

SITES =			https://www.lesbonscomptes.com/upmpdcli/downloads/

WANTLIB += ${COMPILER_LIBCXX} curl expat m microhttpd

# C++18
COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

LIB_DEPENDS =		www/libmicrohttpd \
			net/curl

.include <bsd.port.mk>
