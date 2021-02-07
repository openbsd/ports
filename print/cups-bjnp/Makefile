# $OpenBSD: Makefile,v 1.5 2021/02/07 19:27:18 ajacoutot Exp $

COMMENT=		BJNP protocol backend for CUPS

DISTNAME=		cups-bjnp-2.0.3

CATEGORIES=		print

HOMEPAGE=		http://cups-bjnp.sourceforge.net

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cups

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cups-bjnp/}

LIB_DEPENDS=		print/cups,-libs

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
