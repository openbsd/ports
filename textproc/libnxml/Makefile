# $OpenBSD: Makefile,v 1.10 2016/11/04 11:35:20 sthen Exp $

COMMENT =		XML manipulation library

VERSION =		0.18.3
DISTNAME =		libnxml-${VERSION}
REVISION =		5
CATEGORIES =		textproc
MASTER_SITES =		http://www.autistici.org/bakunin/libnxml/
SHARED_LIBS =		nxml 0.0 # 18.3

HOMEPAGE=		http://www.autistici.org/bakunin/libnxml/doc

# LGPL v2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto curl nghttp2 ssl z

LIB_DEPENDS =		net/curl

MODULES =		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
