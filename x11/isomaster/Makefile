# $OpenBSD: Makefile,v 1.15 2010/10/11 08:19:58 jasper Exp $

COMMENT=		gui cd image editor

DISTNAME=		isomaster-1.3.7
REVISION=		0

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

LIB_DEPENDS=	::x11/gtk+2
RUN_DEPENDS=	::devel/desktop-file-utils

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png z pthread-stubs xcb gdk_pixbuf-2.0 gdk-x11-2.0
WANTLIB += gtk-x11-2.0

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

FAKE_FLAGS=	MYMANPATH=${WRKINST}/${TRUEPREFIX}/man/man1 \
		DESTDIR=""

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
