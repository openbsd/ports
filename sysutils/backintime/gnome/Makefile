# $OpenBSD: Makefile,v 1.1.1.1 2010/05/04 12:53:49 ajacoutot Exp $

COMMENT=	simple backup tool -- GNOME UI

PKGNAME=	backintime-gnome-${V}

CATEGORIES=	x11

WRKSRC=		${WRKDIST}/gnome

SUBST_FILES=	backintime-gnome

CONFIGURE_ARGS=	--no-check

RUN_DEPENDS=	::sysutils/backintime/common \
		::textproc/meld \
		::x11/gnome/py-gnome \
		::devel/py-notify \
		:yelp-*:x11/gnome/yelp \
		:desktop-file-utils-*:devel/desktop-file-utils

.include <bsd.port.mk>
