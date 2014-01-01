# $OpenBSD: Makefile,v 1.15 2014/01/01 20:46:28 naddy Exp $

COMMENT=	x bust a move clone

DISTNAME=	xbubble-0.5.8
REVISION =	0
CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/xbubble/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c m pthread-stubs xcb z png>=2

MASTER_SITES=		ftp://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/ \
			http://gentoo.osuosl.org/distfiles/

MODULES=		devel/gettext

LIB_DEPENDS=		graphics/png

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

.include <bsd.port.mk>
