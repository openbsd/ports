# $OpenBSD: Makefile,v 1.22 2016/03/01 00:07:17 sthen Exp $

COMMENT=		load balancer for simple TCP-based protocols

DISTNAME=		pen-0.32.0
REVISION=		0

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
