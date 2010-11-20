# $OpenBSD: Makefile,v 1.4 2010/11/20 17:22:40 espie Exp $

COMMENT=	simple backup tool -- GNOME UI

PKGNAME=	backintime-gnome-${V}

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
