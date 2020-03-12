# $OpenBSD: Makefile,v 1.5 2020/03/12 14:22:22 sthen Exp $

COMMENT=		VI Editor Like Emacs
DISTNAME=		vile-9.8t
CATEGORIES=		editors
HOMEPAGE=		https://invisible-island.net/vile/

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

