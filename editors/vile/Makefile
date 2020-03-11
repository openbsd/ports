# $OpenBSD: Makefile,v 1.4 2020/03/11 22:27:58 naddy Exp $

COMMENT=		VI Editor Like Emacs
DISTNAME=		vile-9.8q
CATEGORIES=		editors
HOMEPAGE=		https://invisible-island.net/vile/
REVISION=		1

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	c curses iconv

MASTER_SITES=		https://invisible-mirror.net/archives/vile/current/ \
			ftp://ftp.invisible-island.net/vile/current/ \
			ftp://dickey.his.com/vile/current/

EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS=	converters/libiconv
MAKE_FILE=	makefile
NO_TEST=	yes

.include <bsd.port.mk>

