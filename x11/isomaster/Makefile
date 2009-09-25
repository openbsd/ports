# $OpenBSD: Makefile,v 1.10 2009/09/25 16:12:41 giovanni Exp $

COMMENT=		gui cd image editor

DISTNAME=		isomaster-1.3.6
CATEGORIES=		x11
HOMEPAGE=		http://littlesvr.ca/isomaster/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MASTER_SITES=		${HOMEPAGE}releases/

LIB_DEPENDS=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=	::devel/desktop-file-utils

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png z pthread-stubs xcb

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

FAKE_FLAGS=	MYMANPATH=${WRKINST}/${TRUEPREFIX}/man/man1 \
		DESTDIR=""

.include <bsd.port.mk>
