# $OpenBSD: Makefile,v 1.9 2014/03/28 09:39:42 benoit Exp $

COMMENT =		classes and setuptools plugin for Mercurial repositories

MODPY_EGG_VERSION = 	5.0.1
DISTNAME =		hgtools-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
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
