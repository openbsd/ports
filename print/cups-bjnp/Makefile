# $OpenBSD: Makefile,v 1.1.1.1 2014/08/28 19:02:19 ajacoutot Exp $

COMMENT =	BJNP protocol backend for CUPS
DISTNAME =	cups-bjnp-1.2.2
CATEGORIES =	print

HOMEPAGE =	http://cups-bjnp.sourceforge.net
MAINTAINER =	Julian Andrej <atomic@wolfman.devio.us>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cups pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=cups-bjnp/}

LIB_DEPENDS =	print/cups,-libs

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
