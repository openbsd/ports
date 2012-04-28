# $OpenBSD: Makefile,v 1.24 2012/04/28 14:08:54 ajacoutot Exp $

COMMENT=	multimedia player

DISTNAME=	xine-ui-0.99.6
REVISION=	4
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://xinehq.de/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xft Xinerama Xtst Xv Xxf86vm c curl m ncurses
WANTLIB += png pthread readline xine z

MODULES=	devel/gettext
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info
LIB_DEPENDS=	multimedia/xine-lib \
		net/curl \
		graphics/png

USE_LIBTOOL=	Yes
USE_GROFF=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.65
CONFIGURE_ARGS+=--disable-lirc \
		--disable-vdr-keys \
		--without-aalib \
		--without-caca
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
