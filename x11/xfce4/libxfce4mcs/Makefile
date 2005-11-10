# $OpenBSD: Makefile,v 1.3 2005/11/10 22:57:38 jolan Exp $

COMMENT=	"settings management library used by most xfce4 modules"
DISTNAME=	libxfce4mcs-${V}
V=		4.2.3
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	glib-2.0.400.8::devel/glib2 \
		xfce4util.1.6::devel/libxfce4util
WANTLIB=	ICE SM X11

.include <bsd.port.mk>
