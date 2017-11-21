# $OpenBSD: Makefile,v 1.12 2017/11/21 00:13:04 naddy Exp $

COMMENT =		XML manipulation library

VERSION =		0.18.3
DISTNAME =		libnxml-${VERSION}
REVISION =		7
CATEGORIES =		textproc
MASTER_SITES =		http://www.autistici.org/bakunin/libnxml/
SHARED_LIBS =		nxml 0.0 # 18.3

HOMEPAGE=		http://www.autistici.org/bakunin/libnxml/doc

# LGPL v2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  crypto curl iconv intl nghttp2 pthread ssl z

LIB_DEPENDS =		devel/gettext \
			net/curl

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
