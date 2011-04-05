# $OpenBSD: Makefile.inc,v 1.9 2011/04/05 19:46:27 jasper Exp $

SHARED_ONLY?=	Yes

CATEGORIES +=	net/telepathy

HOMEPAGE_TP=	http://telepathy.freedesktop.org/wiki/

# If there is no real page, or only a CategoryFoo,
# fallback to the default homepage.
.if !defined(HOMEPAGE)
HOMEPAGE=	${HOMEPAGE_TP}
.endif

MASTER_SITES_TELEPATHY=	http://telepathy.freedesktop.org/releases/
DIST_SUBDIR=		telepathy

# BSD/GPL/LGPL
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

MAINTAINER?=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

USE_GMAKE?=	Yes

USE_LIBTOOL?=	Yes
