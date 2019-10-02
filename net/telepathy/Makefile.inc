# $OpenBSD: Makefile.inc,v 1.21 2019/10/02 17:59:43 jasper Exp $

PORTROACH=	limitw:1,even

CATEGORIES +=	net

HOMEPAGE_TP=	https://telepathy.freedesktop.org/components/

# If there is no real page, or only a CategoryFoo,
# fallback to the default homepage.
.if !defined(HOMEPAGE)
HOMEPAGE=	${HOMEPAGE_TP}
.endif

MASTER_SITES_TP=	https://telepathy.freedesktop.org/releases/
DIST_SUBDIR=		telepathy

# BSD/GPL/LGPL
PERMIT_PACKAGE?=	Yes

MAINTAINER?=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

USE_GMAKE?=	Yes

CONFIGURE_STYLE?=gnu
