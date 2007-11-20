# $OpenBSD: Makefile,v 1.2 2007/11/20 19:12:12 ckuethe Exp $

COMMENT=	Video converter for the Playstation Portable

V=		0.3
DISTNAME=	pspvc-${V}
PKGNAME=	${DISTNAME}p0
DISTFILES=	pspvc-install-${V}.tar.gz
CATEGORIES=	multimedia

HOMEPAGE=	http://pspvc.sourceforge.net/
MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes freetype
WANTLIB += Xi Xinerama Xrandr Xrender expat fontconfig
WANTLIB += m z c png iconv intl
WANTLIB += atk-1.0 cairo glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0


MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pspvc/}

RUN_DEPENDS=	::graphics/ffmpeg
LIB_DEPENDS+=	gdk-x11-2.0.>=0.11,gdk_pixbuf-2.0.>=0.11,gtk-x11-2.0.>=0.11::x11/gtk+2

CONFIGURE_STYLE=gnu

post-extract:
	@cd ${WRKDIR} && tar zxf */archives/pspvc-${V}.tar.gz

.include <bsd.port.mk>
