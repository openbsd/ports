# $OpenBSD: Makefile,v 1.1.1.1 2016/04/12 21:25:22 sthen Exp $

COMMENT=		VI Editor Like Emacs
DISTNAME=		vile-9.8q
CATEGORIES=		editors
HOMEPAGE=		http://invisible-island.net/vile/

MAINTAINER=		Jeff Rhyason <vile@rhyason.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c curses iconv

MASTER_SITES=		http://invisible-mirror.net/archives/vile/current/ \
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

