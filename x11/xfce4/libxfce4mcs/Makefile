# $OpenBSD: Makefile,v 1.6 2006/09/18 10:21:49 espie Exp $

COMMENT=	"settings management library used by most xfce4 modules"
DISTNAME=	libxfce4mcs-${V}
PKGNAME=	${DISTNAME}p0
V=		4.2.3
SHARED_LIBS=	xfce4mcs-client 2.5 \
		xfce4mcs-manager 2.5
MODGNU_SHARED_LIBS= \
	xfce4mcs-client \
	'-export-dynamic -export-symbols-regex "^[^_].*" -L${X11BASE}/lib' \
	xfce4mcs-manager \
	'-export-dynamic -export-symbols-regex "^[^_].*" -L${X11BASE}/lib'
LIBxfce4mcs-client_ALIAS=	xfce4mcs_client
LIBxfce4mcs-manager_ALIAS=	xfce4mcs_manager

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	glib-2.0.0.0,gobject-2.0.0.0::devel/glib2 \
		xfce4util.>=1.6::devel/libxfce4util
WANTLIB=	ICE SM X11

.include <bsd.port.mk>
