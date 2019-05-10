# $OpenBSD: Makefile,v 1.3 2019/05/10 19:38:01 danj Exp $

COMMENT =	BJNP protocol backend for CUPS
DISTNAME =	cups-bjnp-2.0
CATEGORIES =	print
REVISION =	0

HOMEPAGE =	http://cups-bjnp.sourceforge.net
# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cups pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=cups-bjnp/}

LIB_DEPENDS =	print/cups,-libs

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
