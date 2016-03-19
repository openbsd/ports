# $OpenBSD: Makefile.inc,v 1.19 2016/03/19 15:47:04 naddy Exp $

PORTROACH=	limitw:1,even

CATEGORIES +=	net

HOMEPAGE_TP=	http://telepathy.freedesktop.org/wiki/

# If there is no real page, or only a CategoryFoo,
# fallback to the default homepage.
.if !defined(HOMEPAGE)
HOMEPAGE=	${HOMEPAGE_TP}
.endif

MASTER_SITES_TP=	http://telepathy.freedesktop.org/releases/
DIST_SUBDIR=		telepathy

# BSD/GPL/LGPL
PERMIT_PACKAGE_CDROM?=	Yes

MAINTAINER?=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

USE_GMAKE?=	Yes

CONFIGURE_STYLE?=gnu
