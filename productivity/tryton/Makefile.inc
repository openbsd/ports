# $OpenBSD: Makefile.inc,v 1.19 2014/04/29 08:04:18 ajacoutot Exp $

MODPY_EGG_VERSION ?=	3.2.0

PKG_ARCH=		*

CATEGORIES +=		productivity productivity/tryton

HOMEPAGE=		http://www.tryton.org/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

DIST_SUBDIR=		tryton
MASTER_SITES=		http://downloads.tryton.org/${MODPY_EGG_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/

MODULES +=		lang/python

MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS ?=		${RUN_DEPENDS}

# needs py-dateutil>=2 (downloaded automatically)
# Some regression tests need read access to /etc/trytond.conf (not
# available for unprivilege users) and a trytond server running.
TEST_IS_INTERACTIVE=	Yes

.if defined(TRYTOND_MODULE)
COMMENT ?=		trytond ${TRYTOND_MODULE} module
DISTNAME ?=		trytond_${TRYTOND_MODULE}-${MODPY_EGG_VERSION}
PKGNAME ?=		trytond-module-${TRYTOND_MODULE}-${MODPY_EGG_VERSION}
DESCR ?=		${.CURDIR}/../DESCR-module
RUN_DEPENDS +=		productivity/tryton/trytond
TEST_DEPENDS +=		productivity/tryton/proteus
SUBST_VARS +=		^TRYTOND_MODULE
.endif
