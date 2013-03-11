# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:26 espie Exp $

COMMENT =		lightweight python SOAP client

MODPY_EGG_VERSION =	0.4
DISTNAME =		suds-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION=		0

CATEGORIES =		devel

HOMEPAGE =		https://fedorahosted.org/suds/

MAINTAINER =		Christian Rueger <cr+openbsd@rueger-net.de>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=s/suds/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
