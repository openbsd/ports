# $OpenBSD: Makefile,v 1.9 2012/11/22 13:33:49 ajacoutot Exp $

COMMENT=	simple backup tool -- GNOME UI

PKGNAME=	backintime-gnome-${V}
REVISION=	2

CATEGORIES=	x11

WRKSRC=		${WRKDIST}/gnome

SUBST_FILES=	backintime-gnome

CONFIGURE_ARGS=	--no-check

RUN_DEPENDS=	sysutils/backintime/common>=${V} \
		textproc/meld \
		x11/gnome/py-gnome \
		devel/py-notify \
		devel/desktop-file-utils

.include <bsd.port.mk>
