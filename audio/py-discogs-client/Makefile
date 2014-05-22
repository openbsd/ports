# $OpenBSD: Makefile,v 1.1.1.1 2014/05/22 21:44:13 landry Exp $

COMMENT =	Python interface to Discogs website

MODPY_EGG_VERSION = 1.1.1
DISTNAME =	discogs-client-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	https://github.com/discogs/discogs_client

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=d/discogs-client/}

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	www/py-requests

.include <bsd.port.mk>
