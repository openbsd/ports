# $OpenBSD: Makefile,v 1.5 2009/08/10 06:33:02 kili Exp $

COMMENT=	Video converter for the Playstation Portable

V=		0.3
DISTNAME=	pspvc-${V}
PKGNAME=	${DISTNAME}p3
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
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pspvc/}

RUN_DEPENDS=	::graphics/ffmpeg
LIB_DEPENDS+=	gdk-x11-2.0.>=0.11,gdk_pixbuf-2.0.>=0.11,gtk-x11-2.0.>=0.11::x11/gtk+2

CONFIGURE_STYLE=gnu

post-extract:
	@cd ${WRKDIR} && tar zxf */archives/pspvc-${V}.tar.gz

.include <bsd.port.mk>
