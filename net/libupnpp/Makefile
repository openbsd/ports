# $OpenBSD: Makefile,v 1.1.1.1 2019/01/04 14:30:12 pascal Exp $

COMMENT =		UPnP client library

DISTNAME =		libupnpp-0.16.1

SHARED_LIBS +=		upnpp                     0.0 # 0.0

CATEGORIES =		net

HOMEPAGE =		https://www.lesbonscomptes.com/upmpdcli/libupnpp-refdoc/libupnpp-ctl.html

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} crypto curl expat ixml m nghttp2
WANTLIB += ssl threadutil upnp z

MASTER_SITES =		https://www.lesbonscomptes.com/upmpdcli/downloads/

COMPILER =		base-clang ports-gcc
LIB_DEPENDS =		net/curl \
			net/libupnp

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
