# $OpenBSD: Makefile,v 1.6 2013/09/05 11:20:20 edd Exp $

COMMENT =		classes and setuptools plugin for Mercurial repositories

MODPY_EGG_VERSION = 	3.0.2
DISTNAME =		hgtools-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		https://bitbucket.org/jaraco/hgtools/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=h/hgtools/}
EXTRACT_SUFX =		.zip

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/mercurial

NO_TEST =		Yes

pre-install:
			chmod 644 ${WRKSRC}/hgtools.egg-info/*
			
.include <bsd.port.mk>
