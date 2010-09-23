# $OpenBSD: Makefile.inc,v 1.7 2010/09/23 14:24:22 jasper Exp $

SHARED_ONLY?=	Yes

CATEGORIES +=	net/telepathy

HOMEPAGE?=	http://telepathy.freedesktop.org/wiki/

MASTER_SITES_TELEPATHY=	http://telepathy.freedesktop.org/releases/

# BSD/GPL/LGPL
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

MAINTAINER?=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

USE_GMAKE?=	Yes

USE_LIBTOOL?=	Yes
