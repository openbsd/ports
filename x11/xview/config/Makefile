# $OpenBSD: Makefile,v 1.3 2000/07/16 06:36:14 turan Exp $

PKGNAME=	xview-config-${XVIEW_VERSION}
CATEGORIES=	x11
NEED_VERSION=	1.230

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKSRC=		${WRKDIST}/config
USE_IMAKE=	Yes
NO_BUILD=	Yes
FAKE=		Yes

PATCH_LIST=	p-*
FAKE_FLAGS=	CONFIGDIR=/usr/local/lib/X11/config

pre-fake:
	mkdir -p ${PREFIX}/lib/X11/config

post-extract:
	@chmod -R a+rX ${WRKDIST}

.include <bsd.port.mk>
