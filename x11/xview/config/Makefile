# $OpenBSD: Makefile,v 1.2 2000/04/04 15:10:38 espie Exp $

PKGNAME=	xview-config-${XVIEW_VERSION}
CATEGORIES=	x11
NEED_VERSION=	1.230
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
