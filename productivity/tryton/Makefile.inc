# $OpenBSD: Makefile.inc,v 1.3 2011/06/13 17:07:45 ajacoutot Exp $

MODPY_EGG_VERSION ?=	2.0.1

CATEGORIES +=		productivity

HOMEPAGE=		http://www.tryton.org/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=		tryton
MASTER_SITES=		http://downloads.tryton.org/${MODPY_EGG_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/

MODULES +=		lang/python

MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS ?=	${RUN_DEPENDS}

# XXX needs py-dateutil>=2 (downloaded automatically)
# Some regression tests need read access to /etc/trytond.conf (not
# available for unprivilege users) and a trytond server running.
REGRESS_IS_INTERACTIVE=	Yes
