# $OpenBSD: Makefile,v 1.9 2002/12/11 16:38:24 sturm Exp $

COMMENT=	"OpenLook Toolkit config files"

PKGNAME=	xview-config-${XVIEW_VERSION}
CATEGORIES=	x11

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKSRC=		${WRKDIST}/config
CONFIGURE_STYLE=imake
NO_BUILD=	Yes
NO_REGRESS=	Yes

PATCH_LIST=	p-*
FAKE_FLAGS=	CONFIGDIR=${LOCALBASE}/lib/X11/config

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/config

post-extract:
	@chmod -R a+rX ${WRKDIST}

.include <bsd.port.mk>
