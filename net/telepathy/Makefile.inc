# $OpenBSD: Makefile.inc,v 1.12 2013/03/11 11:35:57 espie Exp $

SHARED_ONLY?=	Yes

CATEGORIES +=	net/telepathy

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
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

MAINTAINER?=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

USE_GMAKE?=	Yes

USE_LIBTOOL?=	Yes

CONFIGURE_STYLE?=gnu
