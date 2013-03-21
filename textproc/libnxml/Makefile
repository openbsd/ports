# $OpenBSD: Makefile,v 1.7 2013/03/21 08:48:54 ajacoutot Exp $

COMMENT =		XML manipulation library

VERSION =		0.18.3
DISTNAME =		libnxml-${VERSION}
REVISION =		2
CATEGORIES =		textproc
MASTER_SITES =		http://www.autistici.org/bakunin/libnxml/
SHARED_LIBS =		nxml 0.0 # 18.3

HOMEPAGE=		http://www.autistici.org/bakunin/libnxml/doc

# LGPL v2.1
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS =		net/curl
WANTLIB +=		crypto idn ssl z curl

MODULES =		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
