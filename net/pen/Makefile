# $OpenBSD: Makefile,v 1.21 2016/01/01 12:51:29 jasper Exp $

COMMENT=		load balancer for simple TCP-based protocols

DISTNAME =		pen-0.32.0

CATEGORIES=		net

HOMEPAGE=		http://siag.nu/pen/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP c crypto ssl

MASTER_SITES=		http://siag.nu/pub/pen/

LIB_DEPENDS=		net/GeoIP

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-docdir=${PREFIX}/share/doc/pen
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
