# $OpenBSD: Makefile,v 1.1.1.1 2011/06/13 12:49:19 ajacoutot Exp $

COMMENT =		lightweight python SOAP client

MODPY_EGG_VERSION =	0.4
DISTNAME =		suds-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://fedorahosted.org/suds/

MAINTAINER =		Christian Rueger <cr+openbsd@rueger-net.de>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=s/suds/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
