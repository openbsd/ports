# $OpenBSD: Makefile,v 1.49 2019/07/12 20:51:29 sthen Exp $

COMMENT=		GUI toolkit for X11

DISTNAME=		xforms-1.2.4
REVISION=		0
CATEGORIES=		x11

SHARED_LIBS +=  forms                2.0      # 3.3
SHARED_LIBS +=  flimage              2.0      # 3.3
SHARED_LIBS +=  formsGL              2.0      # 3.3

HOMEPAGE=		http://xforms-toolkit.org/

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=xforms/}

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xdamage Xext Xfixes
WANTLIB += Xpm Xxf86vm c drm glapi jpeg m pthread
WANTLIB += xcb xcb-dri2 xcb-glx expat

LIB_DEPENDS=		graphics/jpeg

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-extra-prefix=${LOCALBASE} \
			--disable-docs

.include <bsd.port.mk>
