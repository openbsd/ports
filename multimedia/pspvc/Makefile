# $OpenBSD: Makefile,v 1.8 2010/10/24 21:40:39 sthen Exp $

COMMENT=	video converter for the Playstation Portable

V=		0.3
DISTNAME=	pspvc-${V}
REVISION=	5
DISTFILES=	pspvc-install-${V}.tar.gz
CATEGORIES=	multimedia

HOMEPAGE=	http://pspvc.sourceforge.net/
MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pspvc/}

RUN_DEPENDS=	::graphics/ffmpeg
LIB_DEPENDS+=	::x11/gtk+2

CONFIGURE_STYLE=gnu

post-extract:
	@cd ${WRKDIR} && tar zxf */archives/pspvc-${V}.tar.gz

.include <bsd.port.mk>
