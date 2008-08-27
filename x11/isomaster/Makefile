# $OpenBSD: Makefile,v 1.6 2008/08/27 19:56:14 kili Exp $

COMMENT=		gui cd image editor

DISTNAME=		isomaster-1.3.3
CATEGORIES=		x11
HOMEPAGE=		http://littlesvr.ca/isomaster/

MAINTAINER=		Giovanni Bechis <g.bechis@snb.it>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MASTER_SITES=		${HOMEPAGE}releases/

LIB_DEPENDS=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=	::devel/desktop-file-utils

WANTLIB=	c iconv intl m X11 Xau Xcursor Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender expat fontconfig freetype \
		atk-1.0 glib-2.0 gmodule-2.0 gobject-2.0 glitz png \
		pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo z \
		Xcomposite Xdamage pixman-1

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

FAKE_FLAGS=	MYMANPATH=${WRKINST}/${TRUEPREFIX}/man/man1 \
		DESTDIR=""

.include <bsd.port.mk>
