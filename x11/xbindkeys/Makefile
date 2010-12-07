# $OpenBSD: Makefile,v 1.10 2010/12/07 14:46:24 naddy Exp $

COMMENT=	bind keys or mouse buttons to shell commands under X11
DISTNAME=	xbindkeys-1.8.4
CATEGORIES=	x11

HOMEPAGE=	http://www.nongnu.org/xbindkeys/xbindkeys.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# not on MASTER_SITE_SAVANNAH
MASTER_SITES=	http://www.nongnu.org/xbindkeys/

WANTLIB=	X11 c
MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}
USE_GROFF =	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-guile

pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/xbindkeys_show

.include <bsd.port.mk>
