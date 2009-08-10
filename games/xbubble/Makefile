# $OpenBSD: Makefile,v 1.8 2009/08/10 06:31:43 kili Exp $

COMMENT=	x bust a move clone

DISTNAME=	xbubble-0.5.8
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/xbubble/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c m pthread-stubs xcb z

MASTER_SITES=		ftp://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/ \
			http://gentoo.osuosl.org/distfiles/

MODULES=		devel/gettext

LIB_DEPENDS=		png.>=2::graphics/png

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

.include <bsd.port.mk>
