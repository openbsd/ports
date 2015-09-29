# $OpenBSD: Makefile,v 1.5 2015/09/29 10:51:14 sthen Exp $

COMMENT =	Python interface to Discogs website

MODPY_EGG_VERSION = 2.2.0
DISTNAME =	discogs-client-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>
REVISION =	0

HOMEPAGE =	https://github.com/discogs/discogs_client

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	devel/py-coverage \
		devel/py-coveralls \
		devel/py-docopt \
		devel/py-sh \
		devel/py-six \
		security/py-oauthlib \
		textproc/py-yaml \
		www/py-requests 

.include <bsd.port.mk>
