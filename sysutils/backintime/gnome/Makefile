# $OpenBSD: Makefile,v 1.5 2011/06/08 17:50:25 jasper Exp $

COMMENT=	simple backup tool -- GNOME UI

PKGNAME=	backintime-gnome-${V}
REVISION=	0

CATEGORIES=	x11

WRKSRC=		${WRKDIST}/gnome

SUBST_FILES=	backintime-gnome

CONFIGURE_ARGS=	--no-check
USE_GROFF =	Yes

RUN_DEPENDS=	sysutils/backintime/common \
		textproc/meld \
		x11/gnome/py-gnome \
		devel/py-notify \
		devel/desktop-file-utils

.include <bsd.port.mk>
