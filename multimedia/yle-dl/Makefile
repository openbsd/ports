# $OpenBSD: Makefile,v 1.13 2017/08/29 23:19:11 sthen Exp $

GH_ACCOUNT =		aajanki
GH_PROJECT =		yle-dl
GH_TAGNAME =		2.23
MODPY_EGG_VERSION =	${GH_TAGNAME}

COMMENT =		download videos from YLE Areena

CATEGORIES =		multimedia

HOMEPAGE =		http://aajanki.github.io/yle-dl/
MAINTAINER =		Timo Myyra <timo.myyra@wickedbsd.net>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python \
			lang/php

TEST_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-progress \
			net/rtmpdump \
			security/py-crypto \
			www/py-requests \
			lang/php/${MODPHP_VERSION},-curl \
			lang/php/${MODPHP_VERSION},-mcrypt

MODPY_SETUPTOOLS =	Yes
MODPHP_BUILDDEP =	No

pre-configure:
	@sed -i -e "s,'php','${MODPHP_BIN}',g" ${WRKSRC}/yledl/downloaders.py

.include <bsd.port.mk>
