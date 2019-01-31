# $OpenBSD: Makefile,v 1.18 2019/01/31 11:14:33 bentley Exp $

COMMENT=	x bust a move clone

DISTNAME=	xbubble-0.5.8
REVISION =	2
CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/xbubble/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=  X11 c iconv intl m png>=2 xcb z

MASTER_SITES=		https://gentoo.osuosl.org/distfiles/ \
			ftp://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/
			

LIB_DEPENDS=		devel/gettext \
			graphics/png

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

.include <bsd.port.mk>
