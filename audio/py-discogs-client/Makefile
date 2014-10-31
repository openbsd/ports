# $OpenBSD: Makefile,v 1.2 2014/10/31 12:05:06 landry Exp $

COMMENT =	Python interface to Discogs website

MODPY_EGG_VERSION = 2.0.2
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

RUN_DEPENDS =	devel/py-coverage \
		devel/py-coveralls \
		devel/py-docopt \
		devel/py-sh \
		net/py-oauth2 \
		textproc/py-yaml \
		www/py-requests 

.include <bsd.port.mk>
