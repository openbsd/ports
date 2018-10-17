# $OpenBSD: Makefile,v 1.19 2018/10/17 14:15:55 sthen Exp $

GH_ACCOUNT =		aajanki
GH_PROJECT =		yle-dl
GH_TAGNAME =		2.34
MODPY_EGG_VERSION =	${GH_TAGNAME}
REVISION =		0

COMMENT =		download videos from YLE Areena

CATEGORIES =		multimedia

HOMEPAGE =		http://aajanki.github.io/yle-dl/
MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python \
			lang/php

TEST_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/py-attrs \
			devel/py-future \
			devel/py-progress \
			net/rtmpdump \
			security/py-cryptodome \
			www/py-requests \
			lang/php/${MODPHP_VERSION},-curl \
			net/py-socks \
			net/wget \
			textproc/py-lxml \
			converters/py-mini-amf

MODPY_SETUPTOOLS =	Yes
MODPHP_BUILDDEP =	No

pre-configure:
	@sed -i -e "s,'php','${MODPHP_BIN}',g" ${WRKSRC}/yledl/io.py

.include <bsd.port.mk>
