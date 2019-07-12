# $OpenBSD: Makefile,v 1.20 2019/07/12 20:46:27 sthen Exp $

COMMENT=	x bust a move clone

DISTNAME=	xbubble-0.5.8
REVISION =	3
CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/xbubble/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=  X11 c iconv intl m png>=2 xcb z

MASTER_SITES=		https://gentoo.osuosl.org/distfiles/ \
			ftp://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/
			

LIB_DEPENDS=		devel/gettext,-runtime \
			graphics/png

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

.include <bsd.port.mk>
