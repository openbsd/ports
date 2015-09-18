# $OpenBSD: Makefile,v 1.19 2015/09/18 09:52:54 benoit Exp $

COMMENT=		load balancer for simple TCP-based protocols

DISTNAME =		pen-0.30.1

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
