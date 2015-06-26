# $OpenBSD: Makefile,v 1.46 2015/06/26 12:29:11 ajacoutot Exp $

COMMENT=		GUI toolkit for X11

DISTNAME=		xforms-1.2.4
CATEGORIES=		x11

SHARED_LIBS +=  forms                2.0      # 3.3
SHARED_LIBS +=  flimage              2.0      # 3.3
SHARED_LIBS +=  formsGL              2.0      # 3.3

HOMEPAGE=		http://xforms-toolkit.org/

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=xforms/}

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes
WANTLIB += Xpm Xxf86vm c drm glapi jpeg m pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-dri2 xcb-glx

LIB_DEPENDS=		graphics/jpeg

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-extra-prefix=${LOCALBASE} \
			--disable-docs

.include <bsd.port.mk>
