# $OpenBSD: Makefile,v 1.11 2010/11/08 23:12:32 espie Exp $

COMMENT=	x bust a move clone

DISTNAME=	xbubble-0.5.8
REVISION =	0
CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/xbubble/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c m pthread-stubs xcb z png.>=2

MASTER_SITES=		ftp://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/ \
			http://gentoo.osuosl.org/distfiles/

MODULES=		devel/gettext

LIB_DEPENDS=		::graphics/png

USE_GMAKE=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

.include <bsd.port.mk>
