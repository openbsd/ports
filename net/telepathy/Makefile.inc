# $OpenBSD: Makefile.inc,v 1.8 2010/11/23 10:39:47 jasper Exp $

SHARED_ONLY?=	Yes

CATEGORIES +=	net/telepathy

HOMEPAGE?=	http://telepathy.freedesktop.org/wiki/

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
