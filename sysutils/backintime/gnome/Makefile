# $OpenBSD: Makefile,v 1.6 2011/09/15 06:54:41 ajacoutot Exp $

COMMENT=	simple backup tool -- GNOME UI

PKGNAME=	backintime-gnome-${V}

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
