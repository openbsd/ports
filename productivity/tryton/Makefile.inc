# $OpenBSD: Makefile.inc,v 1.1.1.1 2011/06/10 11:49:30 ajacoutot Exp $

MODPY_EGG_VERSION=	2.0.1

CATEGORIES +=		productivity

HOMEPAGE=		http://www.tryton.org/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://downloads.tryton.org/${MODPY_EGG_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/

MODULES +=		lang/python

MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	${RUN_DEPENDS}

# XXX needs py-dateutil>=2 (downloaded automatically)
REGRESS_IS_INTERACTIVE=	Yes
