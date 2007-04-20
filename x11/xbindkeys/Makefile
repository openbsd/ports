# $OpenBSD: Makefile,v 1.2 2007/04/20 15:08:35 naddy Exp $

COMMENT=	"bind keys or mouse buttons to shell commands under X11"
DISTNAME=	xbindkeys-1.8.2
CATEGORIES=	x11

HOMEPAGE=	http://hocwp.free.fr/xbindkeys/xbindkeys.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://hocwp.free.fr/xbindkeys/

WANTLIB=	X11 c
RUN_DEPENDS=	::x11/tk/8.4
USE_X11=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-guile

.include <bsd.port.mk>
