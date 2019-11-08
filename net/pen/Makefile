# $OpenBSD: Makefile,v 1.25 2019/11/08 10:24:21 fcambus Exp $

COMMENT=		load balancer for simple TCP-based protocols

DISTNAME=		pen-0.33.0
REVISION=		0

CATEGORIES=		net

HOMEPAGE=		http://siag.nu/pen/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ssl

MASTER_SITES=		http://siag.nu/pub/pen/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-docdir=${PREFIX}/share/doc/pen \
			--without-geoip
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
