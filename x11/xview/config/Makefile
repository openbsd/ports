# $OpenBSD: Makefile,v 1.11 2004/02/01 20:17:47 sturm Exp $

COMMENT=	"OpenLook Toolkit config files"

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
