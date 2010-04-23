# $OpenBSD: Makefile.inc,v 1.5 2010/04/23 17:59:12 jasper Exp $

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
