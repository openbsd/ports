# $OpenBSD: Makefile,v 1.12 2007/09/15 20:04:29 merdely Exp $

COMMENT=	OpenLook Toolkit config files

PKGNAME=	xview-config-${XVIEW_VERSION}
CATEGORIES=	x11

WRKSRC=		${WRKDIST}/config
CONFIGURE_STYLE=imake
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PATCH_LIST=	p-*
FAKE_FLAGS=	CONFIGDIR=${LOCALBASE}/lib/X11/config

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/config

post-extract:
	@chmod -R a+rX ${WRKDIST}

.include <bsd.port.mk>
