# $OpenBSD: Makefile.inc,v 1.4 2009/01/20 10:43:53 jasper Exp $

SHARED_ONLY?=	Yes

CATEGORIES +=	net/telepathy

HOMEPAGE?=	http://telepathy.freedesktop.org/wiki/

MASTER_SITES_TELEPATHY=	http://telepathy.freedesktop.org/releases/

# BSD/GPL/LGPL
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
