# $OpenBSD: Makefile,v 1.2 2010/10/19 07:43:00 espie Exp $

COMMENT=	simple backup tool -- GNOME UI

PKGNAME=	backintime-gnome-${V}

CATEGORIES=	x11

WRKSRC=		${WRKDIST}/gnome

SUBST_FILES=	backintime-gnome

CONFIGURE_ARGS=	--no-check
USE_GROFF =	Yes

RUN_DEPENDS=	::sysutils/backintime/common \
		::textproc/meld \
		::x11/gnome/py-gnome \
		::devel/py-notify \
		:yelp-*:x11/gnome/yelp \
		:desktop-file-utils-*:devel/desktop-file-utils

.include <bsd.port.mk>
