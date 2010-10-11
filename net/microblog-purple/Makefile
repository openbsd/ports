# $OpenBSD: Makefile,v 1.3 2010/10/11 08:16:51 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Twitter, Identica, and Status.net plugin for libpurple

VERSION=	0.3.0
DISTNAME=	mbpurple-${VERSION}
PKGNAME=	microblog-purple-${VERSION}
REVISION=	0
CATEGORIES=	net

HOMEPAGE=	http://microblog-purple.googlecode.com/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	devel/gettext \
		textproc/intltool

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb xcb-render xcb-render-util z purple
BUILD_DEPENDS=	::net/pidgin
LIB_DEPENDS=	::devel/pango \
		::net/pidgin,-libpurple

USE_GMAKE=	Yes
ALL_TARGET=	build
MAKE_ENV=	MAKE_PROGRAM=${MAKE_PROGRAM}
NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/global.mak

.include <bsd.port.mk>
