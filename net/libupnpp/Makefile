# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:31 sthen Exp $

COMMENT =		UPnP client library

DISTNAME =		libupnpp-0.17.1

SHARED_LIBS +=		upnpp                     1.0 # 8.1.0

CATEGORIES =		net

HOMEPAGE =		https://www.lesbonscomptes.com/upmpdcli/libupnpp-refdoc/libupnpp-ctl.html

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} crypto curl expat ixml m nghttp2
WANTLIB += ssl upnp z

MASTER_SITES =		https://www.lesbonscomptes.com/upmpdcli/downloads/

# C++11
COMPILER =		base-clang ports-gcc
LIB_DEPENDS =		net/curl \
			net/libupnp

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
