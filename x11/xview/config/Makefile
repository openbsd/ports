# $OpenBSD: Makefile,v 1.8 2002/10/29 19:49:00 naddy Exp $

COMMENT=	"OpenLook Toolkit config files"

PKGNAME=	xview-config-${XVIEW_VERSION}
CATEGORIES=	x11
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKSRC=		${WRKDIST}/config
CONFIGURE_STYLE=imake
NO_BUILD=	Yes
NO_REGRESS=	Yes

PATCH_LIST=	p-*
FAKE_FLAGS=	CONFIGDIR=/usr/local/lib/X11/config

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/config

post-extract:
	@chmod -R a+rX ${WRKDIST}

.include <bsd.port.mk>
